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

  ServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.addUserResult> addUser($0.addUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
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
  }

  $async.Future<$0.addUserResult> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.addUserRequest> request) async {
    return addUser(call, await request);
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

  $async.Future<$0.addUserResult> addUser(
      $grpc.ServiceCall call, $0.addUserRequest request);
  $async.Future<$0.CardsList> getCards(
      $grpc.ServiceCall call, $0.getCardsFiltered request);
  $async.Future<$0.AddCardResult> addCard(
      $grpc.ServiceCall call, $0.AddCardRequest request);
  $async.Future<$0.DeleteCardResult> deleteCard(
      $grpc.ServiceCall call, $0.DeleteCardRequest request);
  $async.Future<$0.UpdateCardResult> updateCard(
      $grpc.ServiceCall call, $0.UpdateCardRequest request);
}
