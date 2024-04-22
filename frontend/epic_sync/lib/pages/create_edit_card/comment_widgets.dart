import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/pages/create_edit_card/create_card.dart';
import 'package:epic_sync/providers/comments_provider.dart';
import 'package:epic_sync/providers/globals_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class CommentsBlock extends StatelessWidget {
  final Function callback;

  const CommentsBlock({
    Key? key,
    required this.widget,
    required this.callback,
  }) : super(key: key);

  final CreateCard widget;

  @override
  Widget build(BuildContext context) {
    final commentProvider =
        Provider.of<CommentProvider>(context, listen: false);
    final List<epic_sync.Comment> comments =
        commentProvider.getParentCommentsByCardId(widget.card!.id);

    void toggleReplying([int? parent]) {
      callback(parent);
    }

    return Flexible(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Comentarios',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.question_answer),
                onPressed: () {
                  callback(0);
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          comments.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      return CommentItemWidget(
                          comment: comments[index], callback: toggleReplying);
                    },
                  ),
                )
              : const Text(
                  'Todavía no hay comentarios, pulsa sobre el botón para añadir uno'),
        ],
      ),
    );
  }
}

class WriteCommentBox extends StatelessWidget {
  final epic_sync.Card cardToComment;
  final int? parent;
  final Function callback;

  const WriteCommentBox({
    Key? key,
    required this.parent,
    required this.cardToComment,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final TextEditingController commentController = TextEditingController();
    CommentProvider commentProvider = Provider.of<CommentProvider>(context);

    void _saveComment() {
      int numId = commentProvider.getTotalCommentCount();
      epic_sync.Comment newComment = epic_sync.Comment(
        id: Int64(numId),
        content: commentController.text,
        idCard: cardToComment.id,
        idUser:
            Provider.of<GlobalStateInfo>(context, listen: false).userIdLogged!,
        parent: Int64(parent ?? 0),
        date: DateTime.now().toString(),
      );
      commentProvider.addComment(newComment);
      callback();
    }

    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              parent != 0
                  ? 'Respondiendo a un comentario'
                  : 'Escribe un comentario',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: commentController,
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              cursorColor: themeProvider.accentColor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: themeProvider.accentColor,
                    width: 1,
                  ),
                ),
                labelText: 'Escribe tu comentario aquí',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: themeProvider.textColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: themeProvider.accentColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: themeProvider.accentColor,
                    width: 1,
                  ),
                ),
              ),
              onSubmitted: (_) => _saveComment(),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => callback(),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                      themeProvider.accentColor,
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      themeProvider.backgroundColor,
                    ),
                  ),
                  child: const Text('Cancelar'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _saveComment,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      themeProvider.accentColor,
                    ),
                  ),
                  child: const Text('Guardar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CommentItemWidget extends StatelessWidget {
  final epic_sync.Comment comment;
  final Function callback;

  const CommentItemWidget(
      {Key? key, required this.comment, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commentsProvider =
        Provider.of<CommentProvider>(context, listen: false);
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    String? nombre = userProvider.getUserName(comment.idUser.toString());

    List<epic_sync.Comment>? childComments = commentsProvider.comments
        ?.where((c) => c.parent == comment.id)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    comment.parent.toInt() == 0
                        ? 'Comentario de: '
                        : 'Respuesta respuesta de: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    nombre ?? 'Usuario desconocido',
                    style: TextStyle(
                      color: Provider.of<ThemeProvider>(context).accentColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.reply),
                    onPressed: () {
                      callback(comment.id.toInt());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                comment.content,
                style: const TextStyle(
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        if (childComments != null && childComments.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: childComments.asMap().entries.map((entry) {
              final child = entry.value;
              return Padding(
                padding: const EdgeInsets.only(left: 35),
                child: CommentItemWidget(comment: child, callback: callback),
              );
            }).toList(),
          ),
      ],
    );
  }
}
