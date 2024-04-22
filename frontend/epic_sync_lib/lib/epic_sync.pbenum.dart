///
//  Generated code. Do not modify.
//  source: epic_sync.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CardCategory extends $pb.ProtobufEnum {
  static const CardCategory UNKNOWN_C = CardCategory._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_C');
  static const CardCategory Roadmap = CardCategory._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Roadmap');
  static const CardCategory Proyectos = CardCategory._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Proyectos');

  static const $core.List<CardCategory> values = <CardCategory> [
    UNKNOWN_C,
    Roadmap,
    Proyectos,
  ];

  static final $core.Map<$core.int, CardCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardCategory? valueOf($core.int value) => _byValue[value];

  const CardCategory._($core.int v, $core.String n) : super(v, n);
}

class CardPriority extends $pb.ProtobufEnum {
  static const CardPriority UNKNOWN_P = CardPriority._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_P');
  static const CardPriority Alta = CardPriority._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Alta');
  static const CardPriority Media = CardPriority._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Media');
  static const CardPriority Baja = CardPriority._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Baja');

  static const $core.List<CardPriority> values = <CardPriority> [
    UNKNOWN_P,
    Alta,
    Media,
    Baja,
  ];

  static final $core.Map<$core.int, CardPriority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardPriority? valueOf($core.int value) => _byValue[value];

  const CardPriority._($core.int v, $core.String n) : super(v, n);
}

class CardState extends $pb.ProtobufEnum {
  static const CardState UNKNOWN_S = CardState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_S');
  static const CardState Pendiente = CardState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Pendiente');
  static const CardState Proceso = CardState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Proceso');
  static const CardState Revisar = CardState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Revisar');
  static const CardState Listo = CardState._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Listo');

  static const $core.List<CardState> values = <CardState> [
    UNKNOWN_S,
    Pendiente,
    Proceso,
    Revisar,
    Listo,
  ];

  static final $core.Map<$core.int, CardState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardState? valueOf($core.int value) => _byValue[value];

  const CardState._($core.int v, $core.String n) : super(v, n);
}

class CardType extends $pb.ProtobufEnum {
  static const CardType UNKNOWN_T = CardType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_T');
  static const CardType Tarea = CardType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Tarea');
  static const CardType Historia = CardType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Historia');
  static const CardType Error = CardType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Error');

  static const $core.List<CardType> values = <CardType> [
    UNKNOWN_T,
    Tarea,
    Historia,
    Error,
  ];

  static final $core.Map<$core.int, CardType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardType? valueOf($core.int value) => _byValue[value];

  const CardType._($core.int v, $core.String n) : super(v, n);
}

class CardBacklog extends $pb.ProtobufEnum {
  static const CardBacklog UNKNOWN_B = CardBacklog._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_B');
  static const CardBacklog True = CardBacklog._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'True');
  static const CardBacklog False = CardBacklog._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'False');

  static const $core.List<CardBacklog> values = <CardBacklog> [
    UNKNOWN_B,
    True,
    False,
  ];

  static final $core.Map<$core.int, CardBacklog> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardBacklog? valueOf($core.int value) => _byValue[value];

  const CardBacklog._($core.int v, $core.String n) : super(v, n);
}

