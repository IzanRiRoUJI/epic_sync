///
//  Generated code. Do not modify.
//  source: epic_sync.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'epic_sync.pb.dart' as $0;
export 'epic_sync.pb.dart';

class ServerClient extends $grpc.Client {
  static final _$addUser =
      $grpc.ClientMethod<$0.addUserRequest, $0.addUserResult>(
          '/Server/AddUser',
          ($0.addUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.addUserResult.fromBuffer(value));
  static final _$getUserById = $grpc.ClientMethod<$0.UserIdRequest, $0.User>(
      '/Server/GetUserById',
      ($0.UserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$0.UpdateUserRequest, $0.UpdateUserResult>(
          '/Server/UpdateUser',
          ($0.UpdateUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateUserResult.fromBuffer(value));
  static final _$deleteUser =
      $grpc.ClientMethod<$0.UserIdRequest, $0.DeleteUserResult>(
          '/Server/DeleteUser',
          ($0.UserIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteUserResult.fromBuffer(value));
  static final _$getCards =
      $grpc.ClientMethod<$0.getCardsFiltered, $0.CardsList>(
          '/Server/GetCards',
          ($0.getCardsFiltered value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CardsList.fromBuffer(value));
  static final _$addCard =
      $grpc.ClientMethod<$0.AddCardRequest, $0.AddCardResult>(
          '/Server/AddCard',
          ($0.AddCardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddCardResult.fromBuffer(value));
  static final _$deleteCard =
      $grpc.ClientMethod<$0.DeleteCardRequest, $0.DeleteCardResult>(
          '/Server/DeleteCard',
          ($0.DeleteCardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteCardResult.fromBuffer(value));
  static final _$updateCard =
      $grpc.ClientMethod<$0.UpdateCardRequest, $0.UpdateCardResult>(
          '/Server/UpdateCard',
          ($0.UpdateCardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateCardResult.fromBuffer(value));
  static final _$addLabelToCard =
      $grpc.ClientMethod<$0.AddLabelToCardRequest, $0.AddLabelToCardResult>(
          '/Server/AddLabelToCard',
          ($0.AddLabelToCardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddLabelToCardResult.fromBuffer(value));
  static final _$removeLabelFromCard = $grpc.ClientMethod<
          $0.RemoveLabelFromCardRequest, $0.RemoveLabelFromCardResult>(
      '/Server/RemoveLabelFromCard',
      ($0.RemoveLabelFromCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RemoveLabelFromCardResult.fromBuffer(value));
  static final _$listCardComments =
      $grpc.ClientMethod<$0.ListCardCommentsRequest, $0.CardCommentsList>(
          '/Server/ListCardComments',
          ($0.ListCardCommentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CardCommentsList.fromBuffer(value));
  static final _$addCommentToCard =
      $grpc.ClientMethod<$0.AddCommentToCardRequest, $0.AddCommentToCardResult>(
          '/Server/AddCommentToCard',
          ($0.AddCommentToCardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddCommentToCardResult.fromBuffer(value));
  static final _$deleteCardComment = $grpc.ClientMethod<
          $0.DeleteCardCommentRequest, $0.DeleteCardCommentResult>(
      '/Server/DeleteCardComment',
      ($0.DeleteCardCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteCardCommentResult.fromBuffer(value));
  static final _$moveCardToCategory = $grpc.ClientMethod<
          $0.MoveCardToCategoryRequest, $0.MoveCardToCategoryResult>(
      '/Server/MoveCardToCategory',
      ($0.MoveCardToCategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.MoveCardToCategoryResult.fromBuffer(value));
  static final _$assignCardToUser =
      $grpc.ClientMethod<$0.AssignCardToUserRequest, $0.AssignCardToUserResult>(
          '/Server/AssignCardToUser',
          ($0.AssignCardToUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AssignCardToUserResult.fromBuffer(value));

  ServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.addUserResult> addUser($0.addUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getUserById($0.UserIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserById, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUserResult> updateUser(
      $0.UpdateUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteUserResult> deleteUser($0.UserIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardsList> getCards($0.getCardsFiltered request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCards, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddCardResult> addCard($0.AddCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCardResult> deleteCard(
      $0.DeleteCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCardResult> updateCard(
      $0.UpdateCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddLabelToCardResult> addLabelToCard(
      $0.AddLabelToCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addLabelToCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveLabelFromCardResult> removeLabelFromCard(
      $0.RemoveLabelFromCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeLabelFromCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardCommentsList> listCardComments(
      $0.ListCardCommentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCardComments, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddCommentToCardResult> addCommentToCard(
      $0.AddCommentToCardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCommentToCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCardCommentResult> deleteCardComment(
      $0.DeleteCardCommentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCardComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.MoveCardToCategoryResult> moveCardToCategory(
      $0.MoveCardToCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moveCardToCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.AssignCardToUserResult> assignCardToUser(
      $0.AssignCardToUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignCardToUser, request, options: options);
  }
}

abstract class ServerServiceBase extends $grpc.Service {
  $core.String get $name => 'Server';

  ServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.addUserRequest, $0.addUserResult>(
        'AddUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.addUserRequest.fromBuffer(value),
        ($0.addUserResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserIdRequest, $0.User>(
        'GetUserById',
        getUserById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserIdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserRequest, $0.UpdateUserResult>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserRequest.fromBuffer(value),
        ($0.UpdateUserResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserIdRequest, $0.DeleteUserResult>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserIdRequest.fromBuffer(value),
        ($0.DeleteUserResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.getCardsFiltered, $0.CardsList>(
        'GetCards',
        getCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.getCardsFiltered.fromBuffer(value),
        ($0.CardsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCardRequest, $0.AddCardResult>(
        'AddCard',
        addCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCardRequest.fromBuffer(value),
        ($0.AddCardResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCardRequest, $0.DeleteCardResult>(
        'DeleteCard',
        deleteCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCardRequest.fromBuffer(value),
        ($0.DeleteCardResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCardRequest, $0.UpdateCardResult>(
        'UpdateCard',
        updateCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCardRequest.fromBuffer(value),
        ($0.UpdateCardResult value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AddLabelToCardRequest, $0.AddLabelToCardResult>(
            'AddLabelToCard',
            addLabelToCard_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddLabelToCardRequest.fromBuffer(value),
            ($0.AddLabelToCardResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveLabelFromCardRequest,
            $0.RemoveLabelFromCardResult>(
        'RemoveLabelFromCard',
        removeLabelFromCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveLabelFromCardRequest.fromBuffer(value),
        ($0.RemoveLabelFromCardResult value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListCardCommentsRequest, $0.CardCommentsList>(
            'ListCardComments',
            listCardComments_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListCardCommentsRequest.fromBuffer(value),
            ($0.CardCommentsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCommentToCardRequest,
            $0.AddCommentToCardResult>(
        'AddCommentToCard',
        addCommentToCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddCommentToCardRequest.fromBuffer(value),
        ($0.AddCommentToCardResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCardCommentRequest,
            $0.DeleteCardCommentResult>(
        'DeleteCardComment',
        deleteCardComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteCardCommentRequest.fromBuffer(value),
        ($0.DeleteCardCommentResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MoveCardToCategoryRequest,
            $0.MoveCardToCategoryResult>(
        'MoveCardToCategory',
        moveCardToCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MoveCardToCategoryRequest.fromBuffer(value),
        ($0.MoveCardToCategoryResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AssignCardToUserRequest,
            $0.AssignCardToUserResult>(
        'AssignCardToUser',
        assignCardToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AssignCardToUserRequest.fromBuffer(value),
        ($0.AssignCardToUserResult value) => value.writeToBuffer()));
  }

  $async.Future<$0.addUserResult> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.addUserRequest> request) async {
    return addUser(call, await request);
  }

  $async.Future<$0.User> getUserById_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserIdRequest> request) async {
    return getUserById(call, await request);
  }

  $async.Future<$0.UpdateUserResult> updateUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.DeleteUserResult> deleteUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserIdRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$0.CardsList> getCards_Pre($grpc.ServiceCall call,
      $async.Future<$0.getCardsFiltered> request) async {
    return getCards(call, await request);
  }

  $async.Future<$0.AddCardResult> addCard_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddCardRequest> request) async {
    return addCard(call, await request);
  }

  $async.Future<$0.DeleteCardResult> deleteCard_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteCardRequest> request) async {
    return deleteCard(call, await request);
  }

  $async.Future<$0.UpdateCardResult> updateCard_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateCardRequest> request) async {
    return updateCard(call, await request);
  }

  $async.Future<$0.AddLabelToCardResult> addLabelToCard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddLabelToCardRequest> request) async {
    return addLabelToCard(call, await request);
  }

  $async.Future<$0.RemoveLabelFromCardResult> removeLabelFromCard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveLabelFromCardRequest> request) async {
    return removeLabelFromCard(call, await request);
  }

  $async.Future<$0.CardCommentsList> listCardComments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListCardCommentsRequest> request) async {
    return listCardComments(call, await request);
  }

  $async.Future<$0.AddCommentToCardResult> addCommentToCard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddCommentToCardRequest> request) async {
    return addCommentToCard(call, await request);
  }

  $async.Future<$0.DeleteCardCommentResult> deleteCardComment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteCardCommentRequest> request) async {
    return deleteCardComment(call, await request);
  }

  $async.Future<$0.MoveCardToCategoryResult> moveCardToCategory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MoveCardToCategoryRequest> request) async {
    return moveCardToCategory(call, await request);
  }

  $async.Future<$0.AssignCardToUserResult> assignCardToUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AssignCardToUserRequest> request) async {
    return assignCardToUser(call, await request);
  }

  $async.Future<$0.addUserResult> addUser(
      $grpc.ServiceCall call, $0.addUserRequest request);
  $async.Future<$0.User> getUserById(
      $grpc.ServiceCall call, $0.UserIdRequest request);
  $async.Future<$0.UpdateUserResult> updateUser(
      $grpc.ServiceCall call, $0.UpdateUserRequest request);
  $async.Future<$0.DeleteUserResult> deleteUser(
      $grpc.ServiceCall call, $0.UserIdRequest request);
  $async.Future<$0.CardsList> getCards(
      $grpc.ServiceCall call, $0.getCardsFiltered request);
  $async.Future<$0.AddCardResult> addCard(
      $grpc.ServiceCall call, $0.AddCardRequest request);
  $async.Future<$0.DeleteCardResult> deleteCard(
      $grpc.ServiceCall call, $0.DeleteCardRequest request);
  $async.Future<$0.UpdateCardResult> updateCard(
      $grpc.ServiceCall call, $0.UpdateCardRequest request);
  $async.Future<$0.AddLabelToCardResult> addLabelToCard(
      $grpc.ServiceCall call, $0.AddLabelToCardRequest request);
  $async.Future<$0.RemoveLabelFromCardResult> removeLabelFromCard(
      $grpc.ServiceCall call, $0.RemoveLabelFromCardRequest request);
  $async.Future<$0.CardCommentsList> listCardComments(
      $grpc.ServiceCall call, $0.ListCardCommentsRequest request);
  $async.Future<$0.AddCommentToCardResult> addCommentToCard(
      $grpc.ServiceCall call, $0.AddCommentToCardRequest request);
  $async.Future<$0.DeleteCardCommentResult> deleteCardComment(
      $grpc.ServiceCall call, $0.DeleteCardCommentRequest request);
  $async.Future<$0.MoveCardToCategoryResult> moveCardToCategory(
      $grpc.ServiceCall call, $0.MoveCardToCategoryRequest request);
  $async.Future<$0.AssignCardToUserResult> assignCardToUser(
      $grpc.ServiceCall call, $0.AssignCardToUserRequest request);
}
