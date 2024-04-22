//
//  Generated code. Do not modify.
//  source: scrum_management.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'scrum_management.pbenum.dart';

export 'scrum_management.pbenum.dart';

class Card extends $pb.GeneratedMessage {
  factory Card({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? epic,
    $fixnum.Int64? idUser,
    CardCategory? category,
    $core.String? datecreated,
    $core.String? description,
    CardPriority? priority,
    CardState? state,
    $core.double? storypoints,
    CardType? type,
    CardBacklog? backlog,
    $core.Iterable<Label>? labels,
    $core.Iterable<Comment>? comments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (epic != null) {
      $result.epic = epic;
    }
    if (idUser != null) {
      $result.idUser = idUser;
    }
    if (category != null) {
      $result.category = category;
    }
    if (datecreated != null) {
      $result.datecreated = datecreated;
    }
    if (description != null) {
      $result.description = description;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (state != null) {
      $result.state = state;
    }
    if (storypoints != null) {
      $result.storypoints = storypoints;
    }
    if (type != null) {
      $result.type = type;
    }
    if (backlog != null) {
      $result.backlog = backlog;
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'epic')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'idUser', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<CardCategory>(5, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: CardCategory.UNKNOWN_C, valueOf: CardCategory.valueOf, enumValues: CardCategory.values)
    ..aOS(6, _omitFieldNames ? '' : 'datecreated')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..e<CardPriority>(8, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: CardPriority.UNKNOWN_P, valueOf: CardPriority.valueOf, enumValues: CardPriority.values)
    ..e<CardState>(9, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CardState.UNKNOWN_S, valueOf: CardState.valueOf, enumValues: CardState.values)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'storypoints', $pb.PbFieldType.OD)
    ..e<CardType>(11, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CardType.UNKNOWN_T, valueOf: CardType.valueOf, enumValues: CardType.values)
    ..e<CardBacklog>(12, _omitFieldNames ? '' : 'backlog', $pb.PbFieldType.OE, defaultOrMaker: CardBacklog.UNKNOWN_B, valueOf: CardBacklog.valueOf, enumValues: CardBacklog.values)
    ..pc<Label>(13, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.PM, subBuilder: Label.create)
    ..pc<Comment>(14, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get epic => $_getSZ(2);
  @$pb.TagNumber(3)
  set epic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEpic() => $_has(2);
  @$pb.TagNumber(3)
  void clearEpic() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get idUser => $_getI64(3);
  @$pb.TagNumber(4)
  set idUser($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdUser() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdUser() => clearField(4);

  @$pb.TagNumber(5)
  CardCategory get category => $_getN(4);
  @$pb.TagNumber(5)
  set category(CardCategory v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get datecreated => $_getSZ(5);
  @$pb.TagNumber(6)
  set datecreated($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDatecreated() => $_has(5);
  @$pb.TagNumber(6)
  void clearDatecreated() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  CardPriority get priority => $_getN(7);
  @$pb.TagNumber(8)
  set priority(CardPriority v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPriority() => $_has(7);
  @$pb.TagNumber(8)
  void clearPriority() => clearField(8);

  @$pb.TagNumber(9)
  CardState get state => $_getN(8);
  @$pb.TagNumber(9)
  set state(CardState v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasState() => $_has(8);
  @$pb.TagNumber(9)
  void clearState() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get storypoints => $_getN(9);
  @$pb.TagNumber(10)
  set storypoints($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStorypoints() => $_has(9);
  @$pb.TagNumber(10)
  void clearStorypoints() => clearField(10);

  @$pb.TagNumber(11)
  CardType get type => $_getN(10);
  @$pb.TagNumber(11)
  set type(CardType v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasType() => $_has(10);
  @$pb.TagNumber(11)
  void clearType() => clearField(11);

  @$pb.TagNumber(12)
  CardBacklog get backlog => $_getN(11);
  @$pb.TagNumber(12)
  set backlog(CardBacklog v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasBacklog() => $_has(11);
  @$pb.TagNumber(12)
  void clearBacklog() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<Label> get labels => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<Comment> get comments => $_getList(13);
}

class Label extends $pb.GeneratedMessage {
  factory Label({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Label._() : super();
  factory Label.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Label.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Label', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Label clone() => Label()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Label copyWith(void Function(Label) updates) => super.copyWith((message) => updates(message as Label)) as Label;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Label create() => Label._();
  Label createEmptyInstance() => create();
  static $pb.PbList<Label> createRepeated() => $pb.PbList<Label>();
  @$core.pragma('dart2js:noInline')
  static Label getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Label>(create);
  static Label? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class Comment extends $pb.GeneratedMessage {
  factory Comment({
    $fixnum.Int64? id,
    $fixnum.Int64? idCard,
    $fixnum.Int64? idUser,
    $core.String? date,
    $core.String? content,
    $fixnum.Int64? parent,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (idCard != null) {
      $result.idCard = idCard;
    }
    if (idUser != null) {
      $result.idUser = idUser;
    }
    if (date != null) {
      $result.date = date;
    }
    if (content != null) {
      $result.content = content;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  Comment._() : super();
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Comment', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'idCard', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'idUser', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'date')
    ..aOS(5, _omitFieldNames ? '' : 'content')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'parent', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment)) as Comment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get idCard => $_getI64(1);
  @$pb.TagNumber(2)
  set idCard($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdCard() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get idUser => $_getI64(2);
  @$pb.TagNumber(3)
  set idUser($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdUser() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get parent => $_getI64(5);
  @$pb.TagNumber(6)
  set parent($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasParent() => $_has(5);
  @$pb.TagNumber(6)
  void clearParent() => clearField(6);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? email,
    $core.String? token,
    $core.bool? isAdmin,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (token != null) {
      $result.token = token;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..aOB(5, _omitFieldNames ? '' : 'isAdmin', protoName: 'isAdmin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isAdmin => $_getBF(4);
  @$pb.TagNumber(5)
  set isAdmin($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsAdmin() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAdmin() => clearField(5);
}

class addUserRequest extends $pb.GeneratedMessage {
  factory addUserRequest({
    $core.String? email,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  addUserRequest._() : super();
  factory addUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory addUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'addUserRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  addUserRequest clone() => addUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  addUserRequest copyWith(void Function(addUserRequest) updates) => super.copyWith((message) => updates(message as addUserRequest)) as addUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static addUserRequest create() => addUserRequest._();
  addUserRequest createEmptyInstance() => create();
  static $pb.PbList<addUserRequest> createRepeated() => $pb.PbList<addUserRequest>();
  @$core.pragma('dart2js:noInline')
  static addUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<addUserRequest>(create);
  static addUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class addUserResult extends $pb.GeneratedMessage {
  factory addUserResult({
    $core.bool? insertedEmail,
  }) {
    final $result = create();
    if (insertedEmail != null) {
      $result.insertedEmail = insertedEmail;
    }
    return $result;
  }
  addUserResult._() : super();
  factory addUserResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory addUserResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'addUserResult', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'insertedEmail', protoName: 'insertedEmail')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  addUserResult clone() => addUserResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  addUserResult copyWith(void Function(addUserResult) updates) => super.copyWith((message) => updates(message as addUserResult)) as addUserResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static addUserResult create() => addUserResult._();
  addUserResult createEmptyInstance() => create();
  static $pb.PbList<addUserResult> createRepeated() => $pb.PbList<addUserResult>();
  @$core.pragma('dart2js:noInline')
  static addUserResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<addUserResult>(create);
  static addUserResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get insertedEmail => $_getBF(0);
  @$pb.TagNumber(1)
  set insertedEmail($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInsertedEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearInsertedEmail() => clearField(1);
}

class getCardsFiltered extends $pb.GeneratedMessage {
  factory getCardsFiltered({
    CardCategory? category,
    CardPriority? priority,
    CardState? state,
    CardType? type,
    CardBacklog? backlog,
  }) {
    final $result = create();
    if (category != null) {
      $result.category = category;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (state != null) {
      $result.state = state;
    }
    if (type != null) {
      $result.type = type;
    }
    if (backlog != null) {
      $result.backlog = backlog;
    }
    return $result;
  }
  getCardsFiltered._() : super();
  factory getCardsFiltered.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getCardsFiltered.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'getCardsFiltered', createEmptyInstance: create)
    ..e<CardCategory>(1, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: CardCategory.UNKNOWN_C, valueOf: CardCategory.valueOf, enumValues: CardCategory.values)
    ..e<CardPriority>(2, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: CardPriority.UNKNOWN_P, valueOf: CardPriority.valueOf, enumValues: CardPriority.values)
    ..e<CardState>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CardState.UNKNOWN_S, valueOf: CardState.valueOf, enumValues: CardState.values)
    ..e<CardType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CardType.UNKNOWN_T, valueOf: CardType.valueOf, enumValues: CardType.values)
    ..e<CardBacklog>(5, _omitFieldNames ? '' : 'backlog', $pb.PbFieldType.OE, defaultOrMaker: CardBacklog.UNKNOWN_B, valueOf: CardBacklog.valueOf, enumValues: CardBacklog.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getCardsFiltered clone() => getCardsFiltered()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getCardsFiltered copyWith(void Function(getCardsFiltered) updates) => super.copyWith((message) => updates(message as getCardsFiltered)) as getCardsFiltered;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static getCardsFiltered create() => getCardsFiltered._();
  getCardsFiltered createEmptyInstance() => create();
  static $pb.PbList<getCardsFiltered> createRepeated() => $pb.PbList<getCardsFiltered>();
  @$core.pragma('dart2js:noInline')
  static getCardsFiltered getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<getCardsFiltered>(create);
  static getCardsFiltered? _defaultInstance;

  @$pb.TagNumber(1)
  CardCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(CardCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  CardPriority get priority => $_getN(1);
  @$pb.TagNumber(2)
  set priority(CardPriority v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPriority() => $_has(1);
  @$pb.TagNumber(2)
  void clearPriority() => clearField(2);

  @$pb.TagNumber(3)
  CardState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(CardState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  CardType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(CardType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  CardBacklog get backlog => $_getN(4);
  @$pb.TagNumber(5)
  set backlog(CardBacklog v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBacklog() => $_has(4);
  @$pb.TagNumber(5)
  void clearBacklog() => clearField(5);
}

class CardsList extends $pb.GeneratedMessage {
  factory CardsList({
    $core.Iterable<Card>? cards,
  }) {
    final $result = create();
    if (cards != null) {
      $result.cards.addAll(cards);
    }
    return $result;
  }
  CardsList._() : super();
  factory CardsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardsList', createEmptyInstance: create)
    ..pc<Card>(1, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardsList clone() => CardsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsList copyWith(void Function(CardsList) updates) => super.copyWith((message) => updates(message as CardsList)) as CardsList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardsList create() => CardsList._();
  CardsList createEmptyInstance() => create();
  static $pb.PbList<CardsList> createRepeated() => $pb.PbList<CardsList>();
  @$core.pragma('dart2js:noInline')
  static CardsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardsList>(create);
  static CardsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Card> get cards => $_getList(0);
}

class AddCardRequest extends $pb.GeneratedMessage {
  factory AddCardRequest({
    Card? card,
  }) {
    final $result = create();
    if (card != null) {
      $result.card = card;
    }
    return $result;
  }
  AddCardRequest._() : super();
  factory AddCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCardRequest', createEmptyInstance: create)
    ..aOM<Card>(1, _omitFieldNames ? '' : 'card', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCardRequest clone() => AddCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCardRequest copyWith(void Function(AddCardRequest) updates) => super.copyWith((message) => updates(message as AddCardRequest)) as AddCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCardRequest create() => AddCardRequest._();
  AddCardRequest createEmptyInstance() => create();
  static $pb.PbList<AddCardRequest> createRepeated() => $pb.PbList<AddCardRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCardRequest>(create);
  static AddCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Card get card => $_getN(0);
  @$pb.TagNumber(1)
  set card(Card v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCard() => clearField(1);
  @$pb.TagNumber(1)
  Card ensureCard() => $_ensure(0);
}

class AddCardResult extends $pb.GeneratedMessage {
  factory AddCardResult({
    $core.bool? insertedCard,
  }) {
    final $result = create();
    if (insertedCard != null) {
      $result.insertedCard = insertedCard;
    }
    return $result;
  }
  AddCardResult._() : super();
  factory AddCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCardResult', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'insertedCard', protoName: 'insertedCard')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCardResult clone() => AddCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCardResult copyWith(void Function(AddCardResult) updates) => super.copyWith((message) => updates(message as AddCardResult)) as AddCardResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCardResult create() => AddCardResult._();
  AddCardResult createEmptyInstance() => create();
  static $pb.PbList<AddCardResult> createRepeated() => $pb.PbList<AddCardResult>();
  @$core.pragma('dart2js:noInline')
  static AddCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCardResult>(create);
  static AddCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get insertedCard => $_getBF(0);
  @$pb.TagNumber(1)
  set insertedCard($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInsertedCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearInsertedCard() => clearField(1);
}

class DeleteCardRequest extends $pb.GeneratedMessage {
  factory DeleteCardRequest({
    $fixnum.Int64? idCard,
  }) {
    final $result = create();
    if (idCard != null) {
      $result.idCard = idCard;
    }
    return $result;
  }
  DeleteCardRequest._() : super();
  factory DeleteCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCardRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'idCard', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardRequest clone() => DeleteCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardRequest copyWith(void Function(DeleteCardRequest) updates) => super.copyWith((message) => updates(message as DeleteCardRequest)) as DeleteCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCardRequest create() => DeleteCardRequest._();
  DeleteCardRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCardRequest> createRepeated() => $pb.PbList<DeleteCardRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardRequest>(create);
  static DeleteCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get idCard => $_getI64(0);
  @$pb.TagNumber(1)
  set idCard($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdCard() => clearField(1);
}

class DeleteCardResult extends $pb.GeneratedMessage {
  factory DeleteCardResult({
    $core.bool? deletedCard,
  }) {
    final $result = create();
    if (deletedCard != null) {
      $result.deletedCard = deletedCard;
    }
    return $result;
  }
  DeleteCardResult._() : super();
  factory DeleteCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCardResult', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'deletedCard', protoName: 'deletedCard')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardResult clone() => DeleteCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardResult copyWith(void Function(DeleteCardResult) updates) => super.copyWith((message) => updates(message as DeleteCardResult)) as DeleteCardResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCardResult create() => DeleteCardResult._();
  DeleteCardResult createEmptyInstance() => create();
  static $pb.PbList<DeleteCardResult> createRepeated() => $pb.PbList<DeleteCardResult>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardResult>(create);
  static DeleteCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get deletedCard => $_getBF(0);
  @$pb.TagNumber(1)
  set deletedCard($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeletedCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeletedCard() => clearField(1);
}

class UpdateCardRequest extends $pb.GeneratedMessage {
  factory UpdateCardRequest({
    Card? card,
  }) {
    final $result = create();
    if (card != null) {
      $result.card = card;
    }
    return $result;
  }
  UpdateCardRequest._() : super();
  factory UpdateCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCardRequest', createEmptyInstance: create)
    ..aOM<Card>(1, _omitFieldNames ? '' : 'card', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardRequest clone() => UpdateCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardRequest copyWith(void Function(UpdateCardRequest) updates) => super.copyWith((message) => updates(message as UpdateCardRequest)) as UpdateCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCardRequest create() => UpdateCardRequest._();
  UpdateCardRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCardRequest> createRepeated() => $pb.PbList<UpdateCardRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCardRequest>(create);
  static UpdateCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Card get card => $_getN(0);
  @$pb.TagNumber(1)
  set card(Card v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCard() => clearField(1);
  @$pb.TagNumber(1)
  Card ensureCard() => $_ensure(0);
}

class UpdateCardResult extends $pb.GeneratedMessage {
  factory UpdateCardResult({
    $core.bool? updatedCard,
  }) {
    final $result = create();
    if (updatedCard != null) {
      $result.updatedCard = updatedCard;
    }
    return $result;
  }
  UpdateCardResult._() : super();
  factory UpdateCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCardResult', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'updatedCard', protoName: 'updatedCard')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardResult clone() => UpdateCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardResult copyWith(void Function(UpdateCardResult) updates) => super.copyWith((message) => updates(message as UpdateCardResult)) as UpdateCardResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCardResult create() => UpdateCardResult._();
  UpdateCardResult createEmptyInstance() => create();
  static $pb.PbList<UpdateCardResult> createRepeated() => $pb.PbList<UpdateCardResult>();
  @$core.pragma('dart2js:noInline')
  static UpdateCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCardResult>(create);
  static UpdateCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get updatedCard => $_getBF(0);
  @$pb.TagNumber(1)
  set updatedCard($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdatedCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedCard() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
