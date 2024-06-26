package main

import (
	"context"
	"database/sql"
	"errors"
	"fmt"
	"net"
	"net/http"
	"strconv"
	"strings"

	pb "github.com/IzanRiRoUJI/epic_sync/backend/epic_sync/epic_sync.v1"
	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	"github.com/grpc-ecosystem/grpc-gateway/runtime"
	_ "github.com/lib/pq"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

func main() {
	connectionStr := "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"
	fmt.Println("Connecting to database")
	conn, err := sql.Open("postgres", connectionStr)
	if err != nil {
		panic(err)
	}
	defer conn.Close()

	fmt.Println("Iniciando en 4545")

	lis, err := net.Listen("tcp", "localhost:4545")
	if err != nil {
		panic(err)
	}

	server := NewServerService(conn)

	s := grpc.NewServer(
		grpc.UnaryInterceptor(grpc_middleware.ChainUnaryServer(
			serverInterceptor,
		)),
	)

	pb.RegisterServerServer(s, server)

	reflection.Register(s)

	// Iniciar servidor gRPC
	go func() {
		fmt.Println("gRPC Server listening on :4545")
		if err := s.Serve(lis); err != nil {
			panic(err)
		}
	}()

	// Iniciar servidor HTTP
	if err := RunHTTPServer(server); err != nil {
		panic(err)
	}
}

func RunHTTPServer(server *serverService) error {
	ctx := context.Background()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	mux := runtime.NewServeMux()
	opts := []grpc.DialOption{grpc.WithInsecure()}
	if err := pb.RegisterServerHandlerFromEndpoint(ctx, mux, "localhost:4545", opts); err != nil {
		return err
	}

	httpServer := http.Server{
		Addr:    ":8080",
		Handler: allowCORS(mux),
	}

	fmt.Println("HTTP Server listening on :8080")
	if err := httpServer.ListenAndServe(); err != nil {
		return err
	}

	return nil
}

type serverService struct {
	pb.ServerServer
	db *sql.DB
}

func NewServerService(db *sql.DB) *serverService {
	return &serverService{
		db: db,
	}
}

func allowCORS(h http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if origin := r.Header.Get("Origin"); origin != "" {
			w.Header().Set("Access-Control-Allow-Origin", origin)
			if r.Method == http.MethodOptions && r.Header.Get("Access-Control-Request-Method") != "" {
				preflightHandler(w, r)
				return
			}
		}
		h.ServeHTTP(w, r)
	})
}

func preflightHandler(w http.ResponseWriter, _ *http.Request) {
	headers := []string{"Content-Type", "Accept", "Authorization", "Access-Control-Allow-Origin", "*"}
	w.Header().Set("Access-Control-Allow-Headers", strings.Join(headers, ","))
	methods := []string{"GET", "HEAD", "POST", "PUT", "DELETE", "OPTIONS"}
	w.Header().Set("Access-Control-Allow-Methods", strings.Join(methods, ","))
}

func serverInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (interface{}, error) {
	fmt.Println("GOT REQUEST")
	res, err := handler(ctx, req)
	return res, err
}

func (a *serverService) AddUser(ctx context.Context, in *pb.AddUserRequest) (*pb.AddUserResult, error) {
	fmt.Println("Add user")
	return &pb.AddUserResult{InsertedEmail: true}, nil
}

func (s *serverService) GetCards(ctx context.Context, in *pb.GetCardsFiltered) (*pb.CardsList, error) {

	query := "SELECT * FROM cards WHERE true"
	args := []interface{}{}

	if in.Priority != pb.CardPriority_UNKNOWN_P {
		query += " AND priority = $" + strconv.Itoa(len(args)+1)
		args = append(args, pb.CardPriority_name[int32(in.Priority)])
	}
	if in.Category != pb.CardCategory_UNKNOWN_C {
		query += " AND category = $" + strconv.Itoa(len(args)+1)
		args = append(args, pb.CardCategory_name[int32(in.Category)])
	}
	if in.State != pb.CardState_UNKNOWN_S {
		query += " AND state = $" + strconv.Itoa(len(args)+1)
		args = append(args, pb.CardState_name[int32(in.State)])
	}
	if in.Type != pb.CardType_UNKNOWN_T {
		query += " AND type = $" + strconv.Itoa(len(args)+1)
		args = append(args, pb.CardType_name[int32(in.Type)])
	}
	if in.Backlog != pb.CardBacklog_UNKNOWN_B {
		query += " AND backlog = $" + strconv.Itoa(len(args)+1)
		args = append(args, pb.CardBacklog_name[int32(in.Backlog)])
	}

	rows, err := s.db.Query(query, args...)
	if err != nil {
		fmt.Printf("ERROR: %v\n", err)
		return nil, err
	}
	defer rows.Close()

	cards := []*pb.Card{}
	sum := 0

	for rows.Next() {
		var card pb.Card
		card.Comments = []*pb.Comment{}
		var cardType, cardPriority, cardCategory, cardState, cardBacklog string

		if err := rows.Scan(&card.Id, &card.IdUser, &card.Title, &card.Epic, &card.Description, &cardType,
			&cardPriority, &cardState, &cardBacklog, &card.Datecreated, &card.Storypoints, &cardCategory); err != nil {
			return nil, err
		}

		cards = append(cards, &card)
		sum += 1
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return &pb.CardsList{Cards: cards}, nil
}

func (s *serverService) AddCard(ctx context.Context, in *pb.AddCardRequest) (*pb.AddCardResult, error) {
	fmt.Println("Add card")

	var exists bool
	err := s.db.QueryRow("SELECT EXISTS (SELECT 1 FROM cards WHERE title = $1)", in.Card.Title).Scan(&exists)
	if err != nil {
		return nil, err
	}
	if exists {
		return nil, errors.New("ya existe una tarjeta con el mismo nombre")
	}
	_, err = s.db.Exec("INSERT INTO cards (id_user, title, epic, description, type, priority, state, backlog, datecreated, storypoints, category) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)",
		in.Card.IdUser, in.Card.Title, in.Card.Epic, in.Card.Description, pb.CardType_name[int32(in.Card.Type)], pb.CardPriority_name[int32(in.Card.Priority)], pb.CardState_name[int32(in.Card.State)], pb.CardBacklog_name[int32(in.Card.Backlog)], in.Card.Datecreated, in.Card.Storypoints, pb.CardCategory_name[int32(in.Card.Category)])

	return &pb.AddCardResult{InsertedCard: true}, err
}

func (s *serverService) DeleteCard(ctx context.Context, in *pb.DeleteCardRequest) (*pb.DeleteCardResult, error) {
	fmt.Println("Delete card")

	var exists bool
	err := s.db.QueryRow("SELECT EXISTS (SELECT 1 FROM cards WHERE id_card = $1)", in.IdCard).Scan(&exists)
	if err != nil {
		return nil, err
	}
	if !exists {
		return nil, errors.New("la tarjeta no existe en la base de datos")
	}
	_, err = s.db.Exec("DELETE FROM cards WHERE id_card = $1", in.IdCard)
	if err != nil {
		return nil, err
	}

	return &pb.DeleteCardResult{DeletedCard: true}, nil
}

func (s *serverService) UpdateCard(ctx context.Context, in *pb.UpdateCardRequest) (*pb.UpdateCardResult, error) {
	fmt.Println("Update card")
	_, err := s.db.Exec("UPDATE cards SET title = $1, epic = $2, description = $3, type = $4, priority = $5, state = $6, backlog = $7, datecreated = $8, storypoints = $9, category = $10, id_user = $11 WHERE ID_Card  = $12",
		in.Card.Title, in.Card.Epic, in.Card.Description, pb.CardType_name[int32(in.Card.Type)], pb.CardPriority_name[int32(in.Card.Priority)], pb.CardState_name[int32(in.Card.State)], pb.CardBacklog_name[int32(in.Card.Backlog)], in.Card.Datecreated, in.Card.Storypoints, pb.CardCategory_name[int32(in.Card.Category)], in.Card.IdUser, in.Card.Id)
	return &pb.UpdateCardResult{UpdatedCard: true}, err
}
func (s *serverService) AddLabelToCard(ctx context.Context, in *pb.AddLabelToCardRequest) (*pb.AddLabelToCardResult, error) {
	fmt.Println("Add label to card")

	var exists bool
	err := s.db.QueryRow("SELECT EXISTS (SELECT 1 FROM labels WHERE id = $1)", in.LabelId).Scan(&exists)
	if err != nil {
		return nil, err
	}
	if !exists {
		return nil, errors.New("la etiqueta no existe en la base de datos")
	}

	_, err = s.db.Exec("INSERT INTO card_labels (id_card, id_label) VALUES ($1, $2)", in.CardId, in.LabelId)
	if err != nil {
		return nil, err
	}

	return &pb.AddLabelToCardResult{Success: true}, nil
}

func (s *serverService) RemoveLabelFromCard(ctx context.Context, in *pb.RemoveLabelFromCardRequest) (*pb.RemoveLabelFromCardResult, error) {
	fmt.Println("Remove label from card")

	_, err := s.db.Exec("DELETE FROM card_labels WHERE id_card = $1 AND id_label = $2", in.CardId, in.LabelId)
	if err != nil {
		return nil, err
	}

	return &pb.RemoveLabelFromCardResult{Success: true}, nil
}

func (s *serverService) ListCardComments(ctx context.Context, in *pb.ListCardCommentsRequest) (*pb.CardCommentsList, error) {
	fmt.Println("List card comments")

	rows, err := s.db.Query("SELECT * FROM comments WHERE id_card = $1", in.CardId)
	if err != nil {
		fmt.Printf("ERROR: %v\n", err)
		return nil, err
	}
	defer rows.Close()

	comments := []*pb.Comment{}

	for rows.Next() {
		var comment pb.Comment
		if err := rows.Scan(&comment.Id, &comment.IdCard, &comment.IdUser, &comment.Date, &comment.Content, &comment.Parent); err != nil {
			return nil, err
		}
		comments = append(comments, &comment)
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return &pb.CardCommentsList{Comments: comments}, nil
}

func (s *serverService) AddCommentToCard(ctx context.Context, in *pb.AddCommentToCardRequest) (*pb.AddCommentToCardResult, error) {
	fmt.Println("Add comment to card")

	_, err := s.db.Exec("INSERT INTO comments (id_card, id_user, content) VALUES ($1, $2, $3)", in.CardId, in.Content)
	if err != nil {
		return nil, err
	}

	return &pb.AddCommentToCardResult{Success: true}, nil
}

func (s *serverService) DeleteCardComment(ctx context.Context, in *pb.DeleteCardCommentRequest) (*pb.DeleteCardCommentResult, error) {
	fmt.Println("Delete card comment")

	_, err := s.db.Exec("DELETE FROM comments WHERE id = $1 AND id_card = $2", in.CommentId, in.CardId)
	if err != nil {
		return nil, err
	}

	return &pb.DeleteCardCommentResult{Success: true}, nil
}

func (s *serverService) MoveCardToCategory(ctx context.Context, in *pb.MoveCardToCategoryRequest) (*pb.MoveCardToCategoryResult, error) {
	fmt.Println("Move card to category")

	_, err := s.db.Exec("UPDATE cards SET category = $1 WHERE id_card = $2", pb.CardCategory_name[int32(in.Category)], in.CardId)
	if err != nil {
		return nil, err
	}

	return &pb.MoveCardToCategoryResult{Success: true}, nil
}

func (s *serverService) AssignCardToUser(ctx context.Context, in *pb.AssignCardToUserRequest) (*pb.AssignCardToUserResult, error) {
	fmt.Println("Assign card to user")

	_, err := s.db.Exec("UPDATE cards SET id_user = $1 WHERE id_card = $2", in.UserId, in.CardId)
	if err != nil {
		return nil, err
	}

	return &pb.AssignCardToUserResult{Success: true}, nil
}
func (s *serverService) GetUserById(ctx context.Context, in *pb.UserIdRequest) (*pb.User, error) {
	fmt.Println("Get user by ID")

	var user pb.User

	err := s.db.QueryRow("SELECT id, name, email, token, isAdmin FROM users WHERE id = $1", in.Id).Scan(&user.Id, &user.Name, &user.Email, &user.Token, &user.IsAdmin)
	if err != nil {
		return nil, err
	}

	return &user, nil
}

func (s *serverService) UpdateUser(ctx context.Context, in *pb.UpdateUserRequest) (*pb.UpdateUserResult, error) {
	fmt.Println("Update user")

	_, err := s.db.Exec("UPDATE users SET name = $1, email = $2, token = $3, isAdmin = $4 WHERE id = $5",
		in.Name, in.Email, in.Token, in.IsAdmin, in.Id)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateUserResult{Success: true}, nil
}

func (s *serverService) DeleteUser(ctx context.Context, in *pb.UserIdRequest) (*pb.DeleteUserResult, error) {
	fmt.Println("Delete user")

	_, err := s.db.Exec("DELETE FROM users WHERE id = $1", in.Id)
	if err != nil {
		return nil, err
	}

	return &pb.DeleteUserResult{Success: true}, nil
}

