///
//  Generated code. Do not modify.
//  source: epic_sync.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use cardCategoryDescriptor instead')
const CardCategory$json = const {
  '1': 'CardCategory',
  '2': const [
    const {'1': 'UNKNOWN_C', '2': 0},
    const {'1': 'Roadmap', '2': 1},
    const {'1': 'Proyectos', '2': 2},
  ],
};

/// Descriptor for `CardCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardCategoryDescriptor = $convert.base64Decode('CgxDYXJkQ2F0ZWdvcnkSDQoJVU5LTk9XTl9DEAASCwoHUm9hZG1hcBABEg0KCVByb3llY3RvcxAC');
@$core.Deprecated('Use cardPriorityDescriptor instead')
const CardPriority$json = const {
  '1': 'CardPriority',
  '2': const [
    const {'1': 'UNKNOWN_P', '2': 0},
    const {'1': 'Alta', '2': 1},
    const {'1': 'Media', '2': 2},
    const {'1': 'Baja', '2': 3},
  ],
};

/// Descriptor for `CardPriority`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardPriorityDescriptor = $convert.base64Decode('CgxDYXJkUHJpb3JpdHkSDQoJVU5LTk9XTl9QEAASCAoEQWx0YRABEgkKBU1lZGlhEAISCAoEQmFqYRAD');
@$core.Deprecated('Use cardStateDescriptor instead')
const CardState$json = const {
  '1': 'CardState',
  '2': const [
    const {'1': 'UNKNOWN_S', '2': 0},
    const {'1': 'Pendiente', '2': 1},
    const {'1': 'Proceso', '2': 2},
    const {'1': 'Revisar', '2': 3},
    const {'1': 'Listo', '2': 4},
  ],
};

/// Descriptor for `CardState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardStateDescriptor = $convert.base64Decode('CglDYXJkU3RhdGUSDQoJVU5LTk9XTl9TEAASDQoJUGVuZGllbnRlEAESCwoHUHJvY2VzbxACEgsKB1JldmlzYXIQAxIJCgVMaXN0bxAE');
@$core.Deprecated('Use cardTypeDescriptor instead')
const CardType$json = const {
  '1': 'CardType',
  '2': const [
    const {'1': 'UNKNOWN_T', '2': 0},
    const {'1': 'Tarea', '2': 1},
    const {'1': 'Historia', '2': 2},
    const {'1': 'Error', '2': 3},
  ],
};

/// Descriptor for `CardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardTypeDescriptor = $convert.base64Decode('CghDYXJkVHlwZRINCglVTktOT1dOX1QQABIJCgVUYXJlYRABEgwKCEhpc3RvcmlhEAISCQoFRXJyb3IQAw==');
@$core.Deprecated('Use cardBacklogDescriptor instead')
const CardBacklog$json = const {
  '1': 'CardBacklog',
  '2': const [
    const {'1': 'UNKNOWN_B', '2': 0},
    const {'1': 'True', '2': 1},
    const {'1': 'False', '2': 2},
  ],
};

/// Descriptor for `CardBacklog`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardBacklogDescriptor = $convert.base64Decode('CgtDYXJkQmFja2xvZxINCglVTktOT1dOX0IQABIICgRUcnVlEAESCQoFRmFsc2UQAg==');
@$core.Deprecated('Use cardDescriptor instead')
const Card$json = const {
  '1': 'Card',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'epic', '3': 3, '4': 1, '5': 9, '10': 'epic'},
    const {'1': 'id_user', '3': 4, '4': 1, '5': 4, '10': 'idUser'},
    const {'1': 'category', '3': 5, '4': 1, '5': 14, '6': '.CardCategory', '10': 'category'},
    const {'1': 'datecreated', '3': 6, '4': 1, '5': 9, '10': 'datecreated'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'priority', '3': 8, '4': 1, '5': 14, '6': '.CardPriority', '10': 'priority'},
    const {'1': 'state', '3': 9, '4': 1, '5': 14, '6': '.CardState', '10': 'state'},
    const {'1': 'storypoints', '3': 10, '4': 1, '5': 1, '10': 'storypoints'},
    const {'1': 'type', '3': 11, '4': 1, '5': 14, '6': '.CardType', '10': 'type'},
    const {'1': 'backlog', '3': 12, '4': 1, '5': 14, '6': '.CardBacklog', '10': 'backlog'},
    const {'1': 'labels', '3': 13, '4': 3, '5': 11, '6': '.Label', '10': 'labels'},
    const {'1': 'comments', '3': 14, '4': 3, '5': 11, '6': '.Comment', '10': 'comments'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode('CgRDYXJkEg4KAmlkGAEgASgEUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEZXBpYxgDIAEoCVIEZXBpYxIXCgdpZF91c2VyGAQgASgEUgZpZFVzZXISKQoIY2F0ZWdvcnkYBSABKA4yDS5DYXJkQ2F0ZWdvcnlSCGNhdGVnb3J5EiAKC2RhdGVjcmVhdGVkGAYgASgJUgtkYXRlY3JlYXRlZBIgCgtkZXNjcmlwdGlvbhgHIAEoCVILZGVzY3JpcHRpb24SKQoIcHJpb3JpdHkYCCABKA4yDS5DYXJkUHJpb3JpdHlSCHByaW9yaXR5EiAKBXN0YXRlGAkgASgOMgouQ2FyZFN0YXRlUgVzdGF0ZRIgCgtzdG9yeXBvaW50cxgKIAEoAVILc3Rvcnlwb2ludHMSHQoEdHlwZRgLIAEoDjIJLkNhcmRUeXBlUgR0eXBlEiYKB2JhY2tsb2cYDCABKA4yDC5DYXJkQmFja2xvZ1IHYmFja2xvZxIeCgZsYWJlbHMYDSADKAsyBi5MYWJlbFIGbGFiZWxzEiQKCGNvbW1lbnRzGA4gAygLMgguQ29tbWVudFIIY29tbWVudHM=');
@$core.Deprecated('Use labelDescriptor instead')
const Label$json = const {
  '1': 'Label',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Label`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelDescriptor = $convert.base64Decode('CgVMYWJlbBIOCgJpZBgBIAEoBFICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = const {
  '1': 'Comment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'id_card', '3': 2, '4': 1, '5': 4, '10': 'idCard'},
    const {'1': 'id_user', '3': 3, '4': 1, '5': 4, '10': 'idUser'},
    const {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'parent', '3': 6, '4': 1, '5': 4, '10': 'parent'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode('CgdDb21tZW50Eg4KAmlkGAEgASgEUgJpZBIXCgdpZF9jYXJkGAIgASgEUgZpZENhcmQSFwoHaWRfdXNlchgDIAEoBFIGaWRVc2VyEhIKBGRhdGUYBCABKAlSBGRhdGUSGAoHY29udGVudBgFIAEoCVIHY29udGVudBIWCgZwYXJlbnQYBiABKARSBnBhcmVudA==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'isAdmin', '3': 5, '4': 1, '5': 8, '10': 'isAdmin'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIUCgV0b2tlbhgEIAEoCVIFdG9rZW4SGAoHaXNBZG1pbhgFIAEoCFIHaXNBZG1pbg==');
@$core.Deprecated('Use addUserRequestDescriptor instead')
const addUserRequest$json = const {
  '1': 'addUserRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `addUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5hZGRVc2VyUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');
@$core.Deprecated('Use addUserResultDescriptor instead')
const addUserResult$json = const {
  '1': 'addUserResult',
  '2': const [
    const {'1': 'insertedEmail', '3': 1, '4': 1, '5': 8, '10': 'insertedEmail'},
  ],
};

/// Descriptor for `addUserResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserResultDescriptor = $convert.base64Decode('Cg1hZGRVc2VyUmVzdWx0EiQKDWluc2VydGVkRW1haWwYASABKAhSDWluc2VydGVkRW1haWw=');
@$core.Deprecated('Use getCardsFilteredDescriptor instead')
const getCardsFiltered$json = const {
  '1': 'getCardsFiltered',
  '2': const [
    const {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.CardCategory', '10': 'category'},
    const {'1': 'priority', '3': 2, '4': 1, '5': 14, '6': '.CardPriority', '10': 'priority'},
    const {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.CardState', '10': 'state'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.CardType', '10': 'type'},
    const {'1': 'backlog', '3': 5, '4': 1, '5': 14, '6': '.CardBacklog', '10': 'backlog'},
  ],
};

/// Descriptor for `getCardsFiltered`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCardsFilteredDescriptor = $convert.base64Decode('ChBnZXRDYXJkc0ZpbHRlcmVkEikKCGNhdGVnb3J5GAEgASgOMg0uQ2FyZENhdGVnb3J5UghjYXRlZ29yeRIpCghwcmlvcml0eRgCIAEoDjINLkNhcmRQcmlvcml0eVIIcHJpb3JpdHkSIAoFc3RhdGUYAyABKA4yCi5DYXJkU3RhdGVSBXN0YXRlEh0KBHR5cGUYBCABKA4yCS5DYXJkVHlwZVIEdHlwZRImCgdiYWNrbG9nGAUgASgOMgwuQ2FyZEJhY2tsb2dSB2JhY2tsb2c=');
@$core.Deprecated('Use cardsListDescriptor instead')
const CardsList$json = const {
  '1': 'CardsList',
  '2': const [
    const {'1': 'cards', '3': 1, '4': 3, '5': 11, '6': '.Card', '10': 'cards'},
  ],
};

/// Descriptor for `CardsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsListDescriptor = $convert.base64Decode('CglDYXJkc0xpc3QSGwoFY2FyZHMYASADKAsyBS5DYXJkUgVjYXJkcw==');
@$core.Deprecated('Use addCardRequestDescriptor instead')
const AddCardRequest$json = const {
  '1': 'AddCardRequest',
  '2': const [
    const {'1': 'card', '3': 1, '4': 1, '5': 11, '6': '.Card', '10': 'card'},
  ],
};

/// Descriptor for `AddCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCardRequestDescriptor = $convert.base64Decode('Cg5BZGRDYXJkUmVxdWVzdBIZCgRjYXJkGAEgASgLMgUuQ2FyZFIEY2FyZA==');
@$core.Deprecated('Use addCardResultDescriptor instead')
const AddCardResult$json = const {
  '1': 'AddCardResult',
  '2': const [
    const {'1': 'insertedCard', '3': 1, '4': 1, '5': 8, '10': 'insertedCard'},
  ],
};

/// Descriptor for `AddCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCardResultDescriptor = $convert.base64Decode('Cg1BZGRDYXJkUmVzdWx0EiIKDGluc2VydGVkQ2FyZBgBIAEoCFIMaW5zZXJ0ZWRDYXJk');
@$core.Deprecated('Use deleteCardRequestDescriptor instead')
const DeleteCardRequest$json = const {
  '1': 'DeleteCardRequest',
  '2': const [
    const {'1': 'id_card', '3': 1, '4': 1, '5': 4, '10': 'idCard'},
  ],
};

/// Descriptor for `DeleteCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardRequestDescriptor = $convert.base64Decode('ChFEZWxldGVDYXJkUmVxdWVzdBIXCgdpZF9jYXJkGAEgASgEUgZpZENhcmQ=');
@$core.Deprecated('Use deleteCardResultDescriptor instead')
const DeleteCardResult$json = const {
  '1': 'DeleteCardResult',
  '2': const [
    const {'1': 'deletedCard', '3': 1, '4': 1, '5': 8, '10': 'deletedCard'},
  ],
};

/// Descriptor for `DeleteCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardResultDescriptor = $convert.base64Decode('ChBEZWxldGVDYXJkUmVzdWx0EiAKC2RlbGV0ZWRDYXJkGAEgASgIUgtkZWxldGVkQ2FyZA==');
@$core.Deprecated('Use updateCardRequestDescriptor instead')
const UpdateCardRequest$json = const {
  '1': 'UpdateCardRequest',
  '2': const [
    const {'1': 'card', '3': 1, '4': 1, '5': 11, '6': '.Card', '10': 'card'},
  ],
};

/// Descriptor for `UpdateCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVDYXJkUmVxdWVzdBIZCgRjYXJkGAEgASgLMgUuQ2FyZFIEY2FyZA==');
@$core.Deprecated('Use updateCardResultDescriptor instead')
const UpdateCardResult$json = const {
  '1': 'UpdateCardResult',
  '2': const [
    const {'1': 'updatedCard', '3': 1, '4': 1, '5': 8, '10': 'updatedCard'},
  ],
};

/// Descriptor for `UpdateCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardResultDescriptor = $convert.base64Decode('ChBVcGRhdGVDYXJkUmVzdWx0EiAKC3VwZGF0ZWRDYXJkGAEgASgIUgt1cGRhdGVkQ2FyZA==');
@$core.Deprecated('Use addLabelToCardRequestDescriptor instead')
const AddLabelToCardRequest$json = const {
  '1': 'AddLabelToCardRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'label_id', '3': 2, '4': 1, '5': 4, '10': 'labelId'},
  ],
};

/// Descriptor for `AddLabelToCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addLabelToCardRequestDescriptor = $convert.base64Decode('ChVBZGRMYWJlbFRvQ2FyZFJlcXVlc3QSFwoHY2FyZF9pZBgBIAEoBFIGY2FyZElkEhkKCGxhYmVsX2lkGAIgASgEUgdsYWJlbElk');
@$core.Deprecated('Use addLabelToCardResultDescriptor instead')
const AddLabelToCardResult$json = const {
  '1': 'AddLabelToCardResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddLabelToCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addLabelToCardResultDescriptor = $convert.base64Decode('ChRBZGRMYWJlbFRvQ2FyZFJlc3VsdBIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use removeLabelFromCardRequestDescriptor instead')
const RemoveLabelFromCardRequest$json = const {
  '1': 'RemoveLabelFromCardRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'label_id', '3': 2, '4': 1, '5': 4, '10': 'labelId'},
  ],
};

/// Descriptor for `RemoveLabelFromCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeLabelFromCardRequestDescriptor = $convert.base64Decode('ChpSZW1vdmVMYWJlbEZyb21DYXJkUmVxdWVzdBIXCgdjYXJkX2lkGAEgASgEUgZjYXJkSWQSGQoIbGFiZWxfaWQYAiABKARSB2xhYmVsSWQ=');
@$core.Deprecated('Use removeLabelFromCardResultDescriptor instead')
const RemoveLabelFromCardResult$json = const {
  '1': 'RemoveLabelFromCardResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `RemoveLabelFromCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeLabelFromCardResultDescriptor = $convert.base64Decode('ChlSZW1vdmVMYWJlbEZyb21DYXJkUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use listCardCommentsRequestDescriptor instead')
const ListCardCommentsRequest$json = const {
  '1': 'ListCardCommentsRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
  ],
};

/// Descriptor for `ListCardCommentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCardCommentsRequestDescriptor = $convert.base64Decode('ChdMaXN0Q2FyZENvbW1lbnRzUmVxdWVzdBIXCgdjYXJkX2lkGAEgASgEUgZjYXJkSWQ=');
@$core.Deprecated('Use cardCommentsListDescriptor instead')
const CardCommentsList$json = const {
  '1': 'CardCommentsList',
  '2': const [
    const {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.Comment', '10': 'comments'},
  ],
};

/// Descriptor for `CardCommentsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardCommentsListDescriptor = $convert.base64Decode('ChBDYXJkQ29tbWVudHNMaXN0EiQKCGNvbW1lbnRzGAEgAygLMgguQ29tbWVudFIIY29tbWVudHM=');
@$core.Deprecated('Use addCommentToCardRequestDescriptor instead')
const AddCommentToCardRequest$json = const {
  '1': 'AddCommentToCardRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `AddCommentToCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCommentToCardRequestDescriptor = $convert.base64Decode('ChdBZGRDb21tZW50VG9DYXJkUmVxdWVzdBIXCgdjYXJkX2lkGAEgASgEUgZjYXJkSWQSGAoHY29udGVudBgCIAEoCVIHY29udGVudA==');
@$core.Deprecated('Use addCommentToCardResultDescriptor instead')
const AddCommentToCardResult$json = const {
  '1': 'AddCommentToCardResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AddCommentToCardResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCommentToCardResultDescriptor = $convert.base64Decode('ChZBZGRDb21tZW50VG9DYXJkUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use deleteCardCommentRequestDescriptor instead')
const DeleteCardCommentRequest$json = const {
  '1': 'DeleteCardCommentRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'comment_id', '3': 2, '4': 1, '5': 4, '10': 'commentId'},
  ],
};

/// Descriptor for `DeleteCardCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardCommentRequestDescriptor = $convert.base64Decode('ChhEZWxldGVDYXJkQ29tbWVudFJlcXVlc3QSFwoHY2FyZF9pZBgBIAEoBFIGY2FyZElkEh0KCmNvbW1lbnRfaWQYAiABKARSCWNvbW1lbnRJZA==');
@$core.Deprecated('Use deleteCardCommentResultDescriptor instead')
const DeleteCardCommentResult$json = const {
  '1': 'DeleteCardCommentResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteCardCommentResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardCommentResultDescriptor = $convert.base64Decode('ChdEZWxldGVDYXJkQ29tbWVudFJlc3VsdBIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use moveCardToCategoryRequestDescriptor instead')
const MoveCardToCategoryRequest$json = const {
  '1': 'MoveCardToCategoryRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.CardCategory', '10': 'category'},
  ],
};

/// Descriptor for `MoveCardToCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveCardToCategoryRequestDescriptor = $convert.base64Decode('ChlNb3ZlQ2FyZFRvQ2F0ZWdvcnlSZXF1ZXN0EhcKB2NhcmRfaWQYASABKARSBmNhcmRJZBIpCghjYXRlZ29yeRgCIAEoDjINLkNhcmRDYXRlZ29yeVIIY2F0ZWdvcnk=');
@$core.Deprecated('Use moveCardToCategoryResultDescriptor instead')
const MoveCardToCategoryResult$json = const {
  '1': 'MoveCardToCategoryResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `MoveCardToCategoryResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveCardToCategoryResultDescriptor = $convert.base64Decode('ChhNb3ZlQ2FyZFRvQ2F0ZWdvcnlSZXN1bHQSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use assignCardToUserRequestDescriptor instead')
const AssignCardToUserRequest$json = const {
  '1': 'AssignCardToUserRequest',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 4, '10': 'cardId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 4, '10': 'userId'},
  ],
};

/// Descriptor for `AssignCardToUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignCardToUserRequestDescriptor = $convert.base64Decode('ChdBc3NpZ25DYXJkVG9Vc2VyUmVxdWVzdBIXCgdjYXJkX2lkGAEgASgEUgZjYXJkSWQSFwoHdXNlcl9pZBgCIAEoBFIGdXNlcklk');
@$core.Deprecated('Use assignCardToUserResultDescriptor instead')
const AssignCardToUserResult$json = const {
  '1': 'AssignCardToUserResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AssignCardToUserResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignCardToUserResultDescriptor = $convert.base64Decode('ChZBc3NpZ25DYXJkVG9Vc2VyUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use usersListDescriptor instead')
const UsersList$json = const {
  '1': 'UsersList',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.User', '10': 'users'},
  ],
};

/// Descriptor for `UsersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersListDescriptor = $convert.base64Decode('CglVc2Vyc0xpc3QSGwoFdXNlcnMYASADKAsyBS5Vc2VyUgV1c2Vycw==');
@$core.Deprecated('Use userIdRequestDescriptor instead')
const UserIdRequest$json = const {
  '1': 'UserIdRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `UserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userIdRequestDescriptor = $convert.base64Decode('Cg1Vc2VySWRSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZA==');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'isAdmin', '3': 5, '4': 1, '5': 8, '10': 'isAdmin'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoBFICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSFAoFdG9rZW4YBCABKAlSBXRva2VuEhgKB2lzQWRtaW4YBSABKAhSB2lzQWRtaW4=');
@$core.Deprecated('Use updateUserResultDescriptor instead')
const UpdateUserResult$json = const {
  '1': 'UpdateUserResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateUserResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResultDescriptor = $convert.base64Decode('ChBVcGRhdGVVc2VyUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use deleteUserResultDescriptor instead')
const DeleteUserResult$json = const {
  '1': 'DeleteUserResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteUserResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserResultDescriptor = $convert.base64Decode('ChBEZWxldGVVc2VyUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');
