///
//  Generated code. Do not modify.
//  source: epic_sync.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'epic_sync.pbenum.dart';

export 'epic_sync.pbenum.dart';

class Card extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Card', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epic')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idUser', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<CardCategory>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: CardCategory.UNKNOWN_C, valueOf: CardCategory.valueOf, enumValues: CardCategory.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datecreated')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<CardPriority>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: CardPriority.UNKNOWN_P, valueOf: CardPriority.valueOf, enumValues: CardPriority.values)
    ..e<CardState>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CardState.UNKNOWN_S, valueOf: CardState.valueOf, enumValues: CardState.values)
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storypoints', $pb.PbFieldType.OD)
    ..e<CardType>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CardType.UNKNOWN_T, valueOf: CardType.valueOf, enumValues: CardType.values)
    ..e<CardBacklog>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backlog', $pb.PbFieldType.OE, defaultOrMaker: CardBacklog.UNKNOWN_B, valueOf: CardBacklog.valueOf, enumValues: CardBacklog.values)
    ..pc<Label>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labels', $pb.PbFieldType.PM, subBuilder: Label.create)
    ..pc<Comment>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  Card._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (epic != null) {
      _result.epic = epic;
    }
    if (idUser != null) {
      _result.idUser = idUser;
    }
    if (category != null) {
      _result.category = category;
    }
    if (datecreated != null) {
      _result.datecreated = datecreated;
    }
    if (description != null) {
      _result.description = description;
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (state != null) {
      _result.state = state;
    }
    if (storypoints != null) {
      _result.storypoints = storypoints;
    }
    if (type != null) {
      _result.type = type;
    }
    if (backlog != null) {
      _result.backlog = backlog;
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    if (comments != null) {
      _result.comments.addAll(comments);
    }
    return _result;
  }
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Label', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  Label._() : super();
  factory Label({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Label.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Label.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Label clone() => Label()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Label copyWith(void Function(Label) updates) => super.copyWith((message) => updates(message as Label)) as Label; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Comment', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCard', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idUser', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parent', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Comment._() : super();
  factory Comment({
    $fixnum.Int64? id,
    $fixnum.Int64? idCard,
    $fixnum.Int64? idUser,
    $core.String? date,
    $core.String? content,
    $fixnum.Int64? parent,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (idCard != null) {
      _result.idCard = idCard;
    }
    if (idUser != null) {
      _result.idUser = idUser;
    }
    if (date != null) {
      _result.date = date;
    }
    if (content != null) {
      _result.content = content;
    }
    if (parent != null) {
      _result.parent = parent;
    }
    return _result;
  }
  factory Comment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) => super.copyWith((message) => updates(message as Comment)) as Comment; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAdmin', protoName: 'isAdmin')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? email,
    $core.String? token,
    $core.bool? isAdmin,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (token != null) {
      _result.token = token;
    }
    if (isAdmin != null) {
      _result.isAdmin = isAdmin;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'addUserRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  addUserRequest._() : super();
  factory addUserRequest({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory addUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory addUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  addUserRequest clone() => addUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  addUserRequest copyWith(void Function(addUserRequest) updates) => super.copyWith((message) => updates(message as addUserRequest)) as addUserRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'addUserResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'insertedEmail', protoName: 'insertedEmail')
    ..hasRequiredFields = false
  ;

  addUserResult._() : super();
  factory addUserResult({
    $core.bool? insertedEmail,
  }) {
    final _result = create();
    if (insertedEmail != null) {
      _result.insertedEmail = insertedEmail;
    }
    return _result;
  }
  factory addUserResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory addUserResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  addUserResult clone() => addUserResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  addUserResult copyWith(void Function(addUserResult) updates) => super.copyWith((message) => updates(message as addUserResult)) as addUserResult; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'getCardsFiltered', createEmptyInstance: create)
    ..e<CardCategory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: CardCategory.UNKNOWN_C, valueOf: CardCategory.valueOf, enumValues: CardCategory.values)
    ..e<CardPriority>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: CardPriority.UNKNOWN_P, valueOf: CardPriority.valueOf, enumValues: CardPriority.values)
    ..e<CardState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: CardState.UNKNOWN_S, valueOf: CardState.valueOf, enumValues: CardState.values)
    ..e<CardType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CardType.UNKNOWN_T, valueOf: CardType.valueOf, enumValues: CardType.values)
    ..e<CardBacklog>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backlog', $pb.PbFieldType.OE, defaultOrMaker: CardBacklog.UNKNOWN_B, valueOf: CardBacklog.valueOf, enumValues: CardBacklog.values)
    ..hasRequiredFields = false
  ;

  getCardsFiltered._() : super();
  factory getCardsFiltered({
    CardCategory? category,
    CardPriority? priority,
    CardState? state,
    CardType? type,
    CardBacklog? backlog,
  }) {
    final _result = create();
    if (category != null) {
      _result.category = category;
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (state != null) {
      _result.state = state;
    }
    if (type != null) {
      _result.type = type;
    }
    if (backlog != null) {
      _result.backlog = backlog;
    }
    return _result;
  }
  factory getCardsFiltered.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory getCardsFiltered.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  getCardsFiltered clone() => getCardsFiltered()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  getCardsFiltered copyWith(void Function(getCardsFiltered) updates) => super.copyWith((message) => updates(message as getCardsFiltered)) as getCardsFiltered; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CardsList', createEmptyInstance: create)
    ..pc<Card>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  CardsList._() : super();
  factory CardsList({
    $core.Iterable<Card>? cards,
  }) {
    final _result = create();
    if (cards != null) {
      _result.cards.addAll(cards);
    }
    return _result;
  }
  factory CardsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardsList clone() => CardsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardsList copyWith(void Function(CardsList) updates) => super.copyWith((message) => updates(message as CardsList)) as CardsList; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCardRequest', createEmptyInstance: create)
    ..aOM<Card>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'card', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  AddCardRequest._() : super();
  factory AddCardRequest({
    Card? card,
  }) {
    final _result = create();
    if (card != null) {
      _result.card = card;
    }
    return _result;
  }
  factory AddCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCardRequest clone() => AddCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCardRequest copyWith(void Function(AddCardRequest) updates) => super.copyWith((message) => updates(message as AddCardRequest)) as AddCardRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'insertedCard', protoName: 'insertedCard')
    ..hasRequiredFields = false
  ;

  AddCardResult._() : super();
  factory AddCardResult({
    $core.bool? insertedCard,
  }) {
    final _result = create();
    if (insertedCard != null) {
      _result.insertedCard = insertedCard;
    }
    return _result;
  }
  factory AddCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCardResult clone() => AddCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCardResult copyWith(void Function(AddCardResult) updates) => super.copyWith((message) => updates(message as AddCardResult)) as AddCardResult; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteCardRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idCard', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteCardRequest._() : super();
  factory DeleteCardRequest({
    $fixnum.Int64? idCard,
  }) {
    final _result = create();
    if (idCard != null) {
      _result.idCard = idCard;
    }
    return _result;
  }
  factory DeleteCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardRequest clone() => DeleteCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardRequest copyWith(void Function(DeleteCardRequest) updates) => super.copyWith((message) => updates(message as DeleteCardRequest)) as DeleteCardRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedCard', protoName: 'deletedCard')
    ..hasRequiredFields = false
  ;

  DeleteCardResult._() : super();
  factory DeleteCardResult({
    $core.bool? deletedCard,
  }) {
    final _result = create();
    if (deletedCard != null) {
      _result.deletedCard = deletedCard;
    }
    return _result;
  }
  factory DeleteCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardResult clone() => DeleteCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardResult copyWith(void Function(DeleteCardResult) updates) => super.copyWith((message) => updates(message as DeleteCardResult)) as DeleteCardResult; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateCardRequest', createEmptyInstance: create)
    ..aOM<Card>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'card', subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  UpdateCardRequest._() : super();
  factory UpdateCardRequest({
    Card? card,
  }) {
    final _result = create();
    if (card != null) {
      _result.card = card;
    }
    return _result;
  }
  factory UpdateCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardRequest clone() => UpdateCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardRequest copyWith(void Function(UpdateCardRequest) updates) => super.copyWith((message) => updates(message as UpdateCardRequest)) as UpdateCardRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedCard', protoName: 'updatedCard')
    ..hasRequiredFields = false
  ;

  UpdateCardResult._() : super();
  factory UpdateCardResult({
    $core.bool? updatedCard,
  }) {
    final _result = create();
    if (updatedCard != null) {
      _result.updatedCard = updatedCard;
    }
    return _result;
  }
  factory UpdateCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardResult clone() => UpdateCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardResult copyWith(void Function(UpdateCardResult) updates) => super.copyWith((message) => updates(message as UpdateCardResult)) as UpdateCardResult; // ignore: deprecated_member_use
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

class AddLabelToCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddLabelToCardRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddLabelToCardRequest._() : super();
  factory AddLabelToCardRequest({
    $fixnum.Int64? cardId,
    $fixnum.Int64? labelId,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (labelId != null) {
      _result.labelId = labelId;
    }
    return _result;
  }
  factory AddLabelToCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddLabelToCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddLabelToCardRequest clone() => AddLabelToCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddLabelToCardRequest copyWith(void Function(AddLabelToCardRequest) updates) => super.copyWith((message) => updates(message as AddLabelToCardRequest)) as AddLabelToCardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddLabelToCardRequest create() => AddLabelToCardRequest._();
  AddLabelToCardRequest createEmptyInstance() => create();
  static $pb.PbList<AddLabelToCardRequest> createRepeated() => $pb.PbList<AddLabelToCardRequest>();
  @$core.pragma('dart2js:noInline')
  static AddLabelToCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddLabelToCardRequest>(create);
  static AddLabelToCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get labelId => $_getI64(1);
  @$pb.TagNumber(2)
  set labelId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelId() => clearField(2);
}

class AddLabelToCardResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddLabelToCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  AddLabelToCardResult._() : super();
  factory AddLabelToCardResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory AddLabelToCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddLabelToCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddLabelToCardResult clone() => AddLabelToCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddLabelToCardResult copyWith(void Function(AddLabelToCardResult) updates) => super.copyWith((message) => updates(message as AddLabelToCardResult)) as AddLabelToCardResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddLabelToCardResult create() => AddLabelToCardResult._();
  AddLabelToCardResult createEmptyInstance() => create();
  static $pb.PbList<AddLabelToCardResult> createRepeated() => $pb.PbList<AddLabelToCardResult>();
  @$core.pragma('dart2js:noInline')
  static AddLabelToCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddLabelToCardResult>(create);
  static AddLabelToCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class RemoveLabelFromCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveLabelFromCardRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RemoveLabelFromCardRequest._() : super();
  factory RemoveLabelFromCardRequest({
    $fixnum.Int64? cardId,
    $fixnum.Int64? labelId,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (labelId != null) {
      _result.labelId = labelId;
    }
    return _result;
  }
  factory RemoveLabelFromCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveLabelFromCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveLabelFromCardRequest clone() => RemoveLabelFromCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveLabelFromCardRequest copyWith(void Function(RemoveLabelFromCardRequest) updates) => super.copyWith((message) => updates(message as RemoveLabelFromCardRequest)) as RemoveLabelFromCardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveLabelFromCardRequest create() => RemoveLabelFromCardRequest._();
  RemoveLabelFromCardRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveLabelFromCardRequest> createRepeated() => $pb.PbList<RemoveLabelFromCardRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveLabelFromCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveLabelFromCardRequest>(create);
  static RemoveLabelFromCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get labelId => $_getI64(1);
  @$pb.TagNumber(2)
  set labelId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelId() => clearField(2);
}

class RemoveLabelFromCardResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveLabelFromCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  RemoveLabelFromCardResult._() : super();
  factory RemoveLabelFromCardResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory RemoveLabelFromCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveLabelFromCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveLabelFromCardResult clone() => RemoveLabelFromCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveLabelFromCardResult copyWith(void Function(RemoveLabelFromCardResult) updates) => super.copyWith((message) => updates(message as RemoveLabelFromCardResult)) as RemoveLabelFromCardResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveLabelFromCardResult create() => RemoveLabelFromCardResult._();
  RemoveLabelFromCardResult createEmptyInstance() => create();
  static $pb.PbList<RemoveLabelFromCardResult> createRepeated() => $pb.PbList<RemoveLabelFromCardResult>();
  @$core.pragma('dart2js:noInline')
  static RemoveLabelFromCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveLabelFromCardResult>(create);
  static RemoveLabelFromCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ListCardCommentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListCardCommentsRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListCardCommentsRequest._() : super();
  factory ListCardCommentsRequest({
    $fixnum.Int64? cardId,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    return _result;
  }
  factory ListCardCommentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCardCommentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCardCommentsRequest clone() => ListCardCommentsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCardCommentsRequest copyWith(void Function(ListCardCommentsRequest) updates) => super.copyWith((message) => updates(message as ListCardCommentsRequest)) as ListCardCommentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListCardCommentsRequest create() => ListCardCommentsRequest._();
  ListCardCommentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListCardCommentsRequest> createRepeated() => $pb.PbList<ListCardCommentsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCardCommentsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCardCommentsRequest>(create);
  static ListCardCommentsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);
}

class CardCommentsList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CardCommentsList', createEmptyInstance: create)
    ..pc<Comment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: Comment.create)
    ..hasRequiredFields = false
  ;

  CardCommentsList._() : super();
  factory CardCommentsList({
    $core.Iterable<Comment>? comments,
  }) {
    final _result = create();
    if (comments != null) {
      _result.comments.addAll(comments);
    }
    return _result;
  }
  factory CardCommentsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardCommentsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardCommentsList clone() => CardCommentsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardCommentsList copyWith(void Function(CardCommentsList) updates) => super.copyWith((message) => updates(message as CardCommentsList)) as CardCommentsList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CardCommentsList create() => CardCommentsList._();
  CardCommentsList createEmptyInstance() => create();
  static $pb.PbList<CardCommentsList> createRepeated() => $pb.PbList<CardCommentsList>();
  @$core.pragma('dart2js:noInline')
  static CardCommentsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardCommentsList>(create);
  static CardCommentsList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Comment> get comments => $_getList(0);
}

class AddCommentToCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCommentToCardRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  AddCommentToCardRequest._() : super();
  factory AddCommentToCardRequest({
    $fixnum.Int64? cardId,
    $core.String? content,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddCommentToCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCommentToCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCommentToCardRequest clone() => AddCommentToCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCommentToCardRequest copyWith(void Function(AddCommentToCardRequest) updates) => super.copyWith((message) => updates(message as AddCommentToCardRequest)) as AddCommentToCardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCommentToCardRequest create() => AddCommentToCardRequest._();
  AddCommentToCardRequest createEmptyInstance() => create();
  static $pb.PbList<AddCommentToCardRequest> createRepeated() => $pb.PbList<AddCommentToCardRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCommentToCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCommentToCardRequest>(create);
  static AddCommentToCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class AddCommentToCardResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCommentToCardResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  AddCommentToCardResult._() : super();
  factory AddCommentToCardResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory AddCommentToCardResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCommentToCardResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCommentToCardResult clone() => AddCommentToCardResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCommentToCardResult copyWith(void Function(AddCommentToCardResult) updates) => super.copyWith((message) => updates(message as AddCommentToCardResult)) as AddCommentToCardResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCommentToCardResult create() => AddCommentToCardResult._();
  AddCommentToCardResult createEmptyInstance() => create();
  static $pb.PbList<AddCommentToCardResult> createRepeated() => $pb.PbList<AddCommentToCardResult>();
  @$core.pragma('dart2js:noInline')
  static AddCommentToCardResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCommentToCardResult>(create);
  static AddCommentToCardResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class DeleteCardCommentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteCardCommentRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commentId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteCardCommentRequest._() : super();
  factory DeleteCardCommentRequest({
    $fixnum.Int64? cardId,
    $fixnum.Int64? commentId,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (commentId != null) {
      _result.commentId = commentId;
    }
    return _result;
  }
  factory DeleteCardCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardCommentRequest clone() => DeleteCardCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardCommentRequest copyWith(void Function(DeleteCardCommentRequest) updates) => super.copyWith((message) => updates(message as DeleteCardCommentRequest)) as DeleteCardCommentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteCardCommentRequest create() => DeleteCardCommentRequest._();
  DeleteCardCommentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCardCommentRequest> createRepeated() => $pb.PbList<DeleteCardCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardCommentRequest>(create);
  static DeleteCardCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get commentId => $_getI64(1);
  @$pb.TagNumber(2)
  set commentId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommentId() => clearField(2);
}

class DeleteCardCommentResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteCardCommentResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  DeleteCardCommentResult._() : super();
  factory DeleteCardCommentResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory DeleteCardCommentResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardCommentResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardCommentResult clone() => DeleteCardCommentResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardCommentResult copyWith(void Function(DeleteCardCommentResult) updates) => super.copyWith((message) => updates(message as DeleteCardCommentResult)) as DeleteCardCommentResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteCardCommentResult create() => DeleteCardCommentResult._();
  DeleteCardCommentResult createEmptyInstance() => create();
  static $pb.PbList<DeleteCardCommentResult> createRepeated() => $pb.PbList<DeleteCardCommentResult>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardCommentResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardCommentResult>(create);
  static DeleteCardCommentResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class MoveCardToCategoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoveCardToCategoryRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<CardCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: CardCategory.UNKNOWN_C, valueOf: CardCategory.valueOf, enumValues: CardCategory.values)
    ..hasRequiredFields = false
  ;

  MoveCardToCategoryRequest._() : super();
  factory MoveCardToCategoryRequest({
    $fixnum.Int64? cardId,
    CardCategory? category,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (category != null) {
      _result.category = category;
    }
    return _result;
  }
  factory MoveCardToCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveCardToCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveCardToCategoryRequest clone() => MoveCardToCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveCardToCategoryRequest copyWith(void Function(MoveCardToCategoryRequest) updates) => super.copyWith((message) => updates(message as MoveCardToCategoryRequest)) as MoveCardToCategoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoveCardToCategoryRequest create() => MoveCardToCategoryRequest._();
  MoveCardToCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<MoveCardToCategoryRequest> createRepeated() => $pb.PbList<MoveCardToCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static MoveCardToCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveCardToCategoryRequest>(create);
  static MoveCardToCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  CardCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(CardCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);
}

class MoveCardToCategoryResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MoveCardToCategoryResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  MoveCardToCategoryResult._() : super();
  factory MoveCardToCategoryResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory MoveCardToCategoryResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveCardToCategoryResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveCardToCategoryResult clone() => MoveCardToCategoryResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveCardToCategoryResult copyWith(void Function(MoveCardToCategoryResult) updates) => super.copyWith((message) => updates(message as MoveCardToCategoryResult)) as MoveCardToCategoryResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MoveCardToCategoryResult create() => MoveCardToCategoryResult._();
  MoveCardToCategoryResult createEmptyInstance() => create();
  static $pb.PbList<MoveCardToCategoryResult> createRepeated() => $pb.PbList<MoveCardToCategoryResult>();
  @$core.pragma('dart2js:noInline')
  static MoveCardToCategoryResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveCardToCategoryResult>(create);
  static MoveCardToCategoryResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class AssignCardToUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignCardToUserRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AssignCardToUserRequest._() : super();
  factory AssignCardToUserRequest({
    $fixnum.Int64? cardId,
    $fixnum.Int64? userId,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory AssignCardToUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignCardToUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignCardToUserRequest clone() => AssignCardToUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignCardToUserRequest copyWith(void Function(AssignCardToUserRequest) updates) => super.copyWith((message) => updates(message as AssignCardToUserRequest)) as AssignCardToUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignCardToUserRequest create() => AssignCardToUserRequest._();
  AssignCardToUserRequest createEmptyInstance() => create();
  static $pb.PbList<AssignCardToUserRequest> createRepeated() => $pb.PbList<AssignCardToUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignCardToUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignCardToUserRequest>(create);
  static AssignCardToUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cardId => $_getI64(0);
  @$pb.TagNumber(1)
  set cardId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AssignCardToUserResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignCardToUserResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  AssignCardToUserResult._() : super();
  factory AssignCardToUserResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory AssignCardToUserResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignCardToUserResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignCardToUserResult clone() => AssignCardToUserResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignCardToUserResult copyWith(void Function(AssignCardToUserResult) updates) => super.copyWith((message) => updates(message as AssignCardToUserResult)) as AssignCardToUserResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignCardToUserResult create() => AssignCardToUserResult._();
  AssignCardToUserResult createEmptyInstance() => create();
  static $pb.PbList<AssignCardToUserResult> createRepeated() => $pb.PbList<AssignCardToUserResult>();
  @$core.pragma('dart2js:noInline')
  static AssignCardToUserResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignCardToUserResult>(create);
  static AssignCardToUserResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UsersList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UsersList', createEmptyInstance: create)
    ..pc<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  UsersList._() : super();
  factory UsersList({
    $core.Iterable<User>? users,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory UsersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UsersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UsersList clone() => UsersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UsersList copyWith(void Function(UsersList) updates) => super.copyWith((message) => updates(message as UsersList)) as UsersList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UsersList create() => UsersList._();
  UsersList createEmptyInstance() => create();
  static $pb.PbList<UsersList> createRepeated() => $pb.PbList<UsersList>();
  @$core.pragma('dart2js:noInline')
  static UsersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsersList>(create);
  static UsersList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);
}

class UserIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  UserIdRequest._() : super();
  factory UserIdRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UserIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdRequest clone() => UserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdRequest copyWith(void Function(UserIdRequest) updates) => super.copyWith((message) => updates(message as UserIdRequest)) as UserIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdRequest create() => UserIdRequest._();
  UserIdRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdRequest> createRepeated() => $pb.PbList<UserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdRequest>(create);
  static UserIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserRequest', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAdmin', protoName: 'isAdmin')
    ..hasRequiredFields = false
  ;

  UpdateUserRequest._() : super();
  factory UpdateUserRequest({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? email,
    $core.String? token,
    $core.bool? isAdmin,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (token != null) {
      _result.token = token;
    }
    if (isAdmin != null) {
      _result.isAdmin = isAdmin;
    }
    return _result;
  }
  factory UpdateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserRequest clone() => UpdateUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) => super.copyWith((message) => updates(message as UpdateUserRequest)) as UpdateUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest create() => UpdateUserRequest._();
  UpdateUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRequest> createRepeated() => $pb.PbList<UpdateUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserRequest>(create);
  static UpdateUserRequest? _defaultInstance;

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

class UpdateUserResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  UpdateUserResult._() : super();
  factory UpdateUserResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory UpdateUserResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserResult clone() => UpdateUserResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserResult copyWith(void Function(UpdateUserResult) updates) => super.copyWith((message) => updates(message as UpdateUserResult)) as UpdateUserResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserResult create() => UpdateUserResult._();
  UpdateUserResult createEmptyInstance() => create();
  static $pb.PbList<UpdateUserResult> createRepeated() => $pb.PbList<UpdateUserResult>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserResult>(create);
  static UpdateUserResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class DeleteUserResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteUserResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  DeleteUserResult._() : super();
  factory DeleteUserResult({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory DeleteUserResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUserResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUserResult clone() => DeleteUserResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUserResult copyWith(void Function(DeleteUserResult) updates) => super.copyWith((message) => updates(message as DeleteUserResult)) as DeleteUserResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteUserResult create() => DeleteUserResult._();
  DeleteUserResult createEmptyInstance() => create();
  static $pb.PbList<DeleteUserResult> createRepeated() => $pb.PbList<DeleteUserResult>();
  @$core.pragma('dart2js:noInline')
  static DeleteUserResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUserResult>(create);
  static DeleteUserResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

