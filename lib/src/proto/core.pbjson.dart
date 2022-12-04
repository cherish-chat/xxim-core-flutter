///
//  Generated code. Do not modify.
//  source: core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pushEventDescriptor instead')
const PushEvent$json = const {
  '1': 'PushEvent',
  '2': const [
    const {'1': 'PushMsgDataList', '2': 0},
    const {'1': 'PushNoticeDataList', '2': 1},
  ],
};

/// Descriptor for `PushEvent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pushEventDescriptor = $convert.base64Decode(
    'CglQdXNoRXZlbnQSEwoPUHVzaE1zZ0RhdGFMaXN0EAASFgoSUHVzaE5vdGljZURhdGFMaXN0EAE=');
@$core.Deprecated('Use commonReqDescriptor instead')
const CommonReq$json = const {
  '1': 'CommonReq',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'deviceModel', '3': 11, '4': 1, '5': 9, '10': 'deviceModel'},
    const {'1': 'deviceId', '3': 12, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'osVersion', '3': 13, '4': 1, '5': 9, '10': 'osVersion'},
    const {'1': 'platform', '3': 14, '4': 1, '5': 9, '10': 'platform'},
    const {'1': 'appVersion', '3': 21, '4': 1, '5': 9, '10': 'appVersion'},
    const {'1': 'language', '3': 22, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'data', '3': 31, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'ip', '3': 41, '4': 1, '5': 9, '10': 'ip'},
    const {'1': 'userAgent', '3': 42, '4': 1, '5': 9, '10': 'userAgent'},
  ],
};

/// Descriptor for `CommonReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonReqDescriptor = $convert.base64Decode(
    'CglDb21tb25SZXESFgoGdXNlcklkGAEgASgJUgZ1c2VySWQSFAoFdG9rZW4YAiABKAlSBXRva2VuEiAKC2RldmljZU1vZGVsGAsgASgJUgtkZXZpY2VNb2RlbBIaCghkZXZpY2VJZBgMIAEoCVIIZGV2aWNlSWQSHAoJb3NWZXJzaW9uGA0gASgJUglvc1ZlcnNpb24SGgoIcGxhdGZvcm0YDiABKAlSCHBsYXRmb3JtEh4KCmFwcFZlcnNpb24YFSABKAlSCmFwcFZlcnNpb24SGgoIbGFuZ3VhZ2UYFiABKAlSCGxhbmd1YWdlEhIKBGRhdGEYHyABKAxSBGRhdGESDgoCaXAYKSABKAlSAmlwEhwKCXVzZXJBZ2VudBgqIAEoCVIJdXNlckFnZW50');
@$core.Deprecated('Use commonRespDescriptor instead')
const CommonResp$json = const {
  '1': 'CommonResp',
  '2': const [
    const {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pb.CommonResp.Code',
      '10': 'code'
    },
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'msg', '17': true},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
  '4': const [CommonResp_Code$json],
  '8': const [
    const {'1': '_msg'},
  ],
};

@$core.Deprecated('Use commonRespDescriptor instead')
const CommonResp_Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'UnknownError', '2': 1},
    const {'1': 'InternalError', '2': 2},
    const {'1': 'RequestError', '2': 3},
    const {'1': 'AuthError', '2': 4},
    const {'1': 'ToastError', '2': 5},
    const {'1': 'AlertError', '2': 7},
    const {'1': 'RetryError', '2': 8},
  ],
};

/// Descriptor for `CommonResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonRespDescriptor = $convert.base64Decode(
    'CgpDb21tb25SZXNwEicKBGNvZGUYASABKA4yEy5wYi5Db21tb25SZXNwLkNvZGVSBGNvZGUSFQoDbXNnGAIgASgJSABSA21zZ4gBARISCgRkYXRhGAMgASgMUgRkYXRhIokBCgRDb2RlEgsKB1N1Y2Nlc3MQABIQCgxVbmtub3duRXJyb3IQARIRCg1JbnRlcm5hbEVycm9yEAISEAoMUmVxdWVzdEVycm9yEAMSDQoJQXV0aEVycm9yEAQSDgoKVG9hc3RFcnJvchAFEg4KCkFsZXJ0RXJyb3IQBxIOCgpSZXRyeUVycm9yEAhCBgoEX21zZw==');
@$core.Deprecated('Use pushBodyDescriptor instead')
const PushBody$json = const {
  '1': 'PushBody',
  '2': const [
    const {
      '1': 'event',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pb.PushEvent',
      '10': 'event'
    },
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `PushBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushBodyDescriptor = $convert.base64Decode(
    'CghQdXNoQm9keRIjCgVldmVudBgBIAEoDjINLnBiLlB1c2hFdmVudFIFZXZlbnQSEgoEZGF0YRgCIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData$json = const {
  '1': 'MsgData',
  '2': const [
    const {'1': 'clientMsgId', '3': 1, '4': 1, '5': 9, '10': 'clientMsgId'},
    const {'1': 'serverMsgId', '3': 2, '4': 1, '5': 9, '10': 'serverMsgId'},
    const {'1': 'clientTime', '3': 3, '4': 1, '5': 9, '10': 'clientTime'},
    const {'1': 'serverTime', '3': 4, '4': 1, '5': 9, '10': 'serverTime'},
    const {'1': 'senderId', '3': 11, '4': 1, '5': 9, '10': 'senderId'},
    const {'1': 'senderInfo', '3': 12, '4': 1, '5': 12, '10': 'senderInfo'},
    const {'1': 'convId', '3': 21, '4': 1, '5': 9, '10': 'convId'},
    const {'1': 'atUsers', '3': 22, '4': 3, '5': 9, '10': 'atUsers'},
    const {'1': 'contentType', '3': 31, '4': 1, '5': 5, '10': 'contentType'},
    const {'1': 'content', '3': 32, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'seq', '3': 33, '4': 1, '5': 9, '10': 'seq'},
    const {
      '1': 'options',
      '3': 41,
      '4': 1,
      '5': 11,
      '6': '.pb.MsgData.Options',
      '10': 'options'
    },
    const {
      '1': 'offlinePush',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.pb.MsgData.OfflinePush',
      '10': 'offlinePush'
    },
    const {'1': 'ext', '3': 100, '4': 1, '5': 12, '10': 'ext'},
  ],
  '3': const [MsgData_OfflinePush$json, MsgData_Options$json],
};

@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData_OfflinePush$json = const {
  '1': 'OfflinePush',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 9, '10': 'payload'},
  ],
};

@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData_Options$json = const {
  '1': 'Options',
  '2': const [
    const {
      '1': 'storageForServer',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'storageForServer'
    },
    const {
      '1': 'storageForClient',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'storageForClient'
    },
    const {'1': 'needDecrypt', '3': 3, '4': 1, '5': 8, '10': 'needDecrypt'},
    const {'1': 'offlinePush', '3': 4, '4': 1, '5': 8, '10': 'offlinePush'},
    const {'1': 'updateConvMsg', '3': 5, '4': 1, '5': 8, '10': 'updateConvMsg'},
    const {
      '1': 'updateUnreadCount',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'updateUnreadCount'
    },
  ],
};

/// Descriptor for `MsgData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataDescriptor = $convert.base64Decode(
    'CgdNc2dEYXRhEiAKC2NsaWVudE1zZ0lkGAEgASgJUgtjbGllbnRNc2dJZBIgCgtzZXJ2ZXJNc2dJZBgCIAEoCVILc2VydmVyTXNnSWQSHgoKY2xpZW50VGltZRgDIAEoCVIKY2xpZW50VGltZRIeCgpzZXJ2ZXJUaW1lGAQgASgJUgpzZXJ2ZXJUaW1lEhoKCHNlbmRlcklkGAsgASgJUghzZW5kZXJJZBIeCgpzZW5kZXJJbmZvGAwgASgMUgpzZW5kZXJJbmZvEhYKBmNvbnZJZBgVIAEoCVIGY29udklkEhgKB2F0VXNlcnMYFiADKAlSB2F0VXNlcnMSIAoLY29udGVudFR5cGUYHyABKAVSC2NvbnRlbnRUeXBlEhgKB2NvbnRlbnQYICABKAxSB2NvbnRlbnQSEAoDc2VxGCEgASgJUgNzZXESLQoHb3B0aW9ucxgpIAEoCzITLnBiLk1zZ0RhdGEuT3B0aW9uc1IHb3B0aW9ucxI5CgtvZmZsaW5lUHVzaBgqIAEoCzIXLnBiLk1zZ0RhdGEuT2ZmbGluZVB1c2hSC29mZmxpbmVQdXNoEhAKA2V4dBhkIAEoDFIDZXh0GlcKC09mZmxpbmVQdXNoEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EhgKB3BheWxvYWQYAyABKAlSB3BheWxvYWQa+QEKB09wdGlvbnMSKgoQc3RvcmFnZUZvclNlcnZlchgBIAEoCFIQc3RvcmFnZUZvclNlcnZlchIqChBzdG9yYWdlRm9yQ2xpZW50GAIgASgIUhBzdG9yYWdlRm9yQ2xpZW50EiAKC25lZWREZWNyeXB0GAMgASgIUgtuZWVkRGVjcnlwdBIgCgtvZmZsaW5lUHVzaBgEIAEoCFILb2ZmbGluZVB1c2gSJAoNdXBkYXRlQ29udk1zZxgFIAEoCFINdXBkYXRlQ29udk1zZxIsChF1cGRhdGVVbnJlYWRDb3VudBgGIAEoCFIRdXBkYXRlVW5yZWFkQ291bnQ=');
@$core.Deprecated('Use msgDataListDescriptor instead')
const MsgDataList$json = const {
  '1': 'MsgDataList',
  '2': const [
    const {
      '1': 'msgDataList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'msgDataList'
    },
  ],
};

/// Descriptor for `MsgDataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataListDescriptor = $convert.base64Decode(
    'CgtNc2dEYXRhTGlzdBItCgttc2dEYXRhTGlzdBgBIAMoCzILLnBiLk1zZ0RhdGFSC21zZ0RhdGFMaXN0');
@$core.Deprecated('Use noticeDataDescriptor instead')
const NoticeData$json = const {
  '1': 'NoticeData',
  '2': const [
    const {'1': 'convId', '3': 1, '4': 1, '5': 9, '10': 'convId'},
    const {'1': 'unreadCount', '3': 2, '4': 1, '5': 5, '10': 'unreadCount'},
    const {
      '1': 'unreadAbsolute',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'unreadAbsolute'
    },
    const {'1': 'noticeId', '3': 11, '4': 1, '5': 9, '10': 'noticeId'},
    const {'1': 'createTime', '3': 12, '4': 1, '5': 9, '10': 'createTime'},
    const {'1': 'title', '3': 13, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'contentType', '3': 14, '4': 1, '5': 5, '10': 'contentType'},
    const {'1': 'content', '3': 15, '4': 1, '5': 12, '10': 'content'},
    const {
      '1': 'options',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.pb.NoticeData.Options',
      '10': 'options'
    },
    const {'1': 'ext', '3': 31, '4': 1, '5': 12, '10': 'ext'},
  ],
  '3': const [NoticeData_Options$json],
};

@$core.Deprecated('Use noticeDataDescriptor instead')
const NoticeData_Options$json = const {
  '1': 'Options',
  '2': const [
    const {
      '1': 'storageForClient',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'storageForClient'
    },
    const {'1': 'updateConvMsg', '3': 2, '4': 1, '5': 8, '10': 'updateConvMsg'},
    const {
      '1': 'onlinePushOnce',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'onlinePushOnce'
    },
  ],
};

/// Descriptor for `NoticeData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeDataDescriptor = $convert.base64Decode(
    'CgpOb3RpY2VEYXRhEhYKBmNvbnZJZBgBIAEoCVIGY29udklkEiAKC3VucmVhZENvdW50GAIgASgFUgt1bnJlYWRDb3VudBImCg51bnJlYWRBYnNvbHV0ZRgDIAEoCFIOdW5yZWFkQWJzb2x1dGUSGgoIbm90aWNlSWQYCyABKAlSCG5vdGljZUlkEh4KCmNyZWF0ZVRpbWUYDCABKAlSCmNyZWF0ZVRpbWUSFAoFdGl0bGUYDSABKAlSBXRpdGxlEiAKC2NvbnRlbnRUeXBlGA4gASgFUgtjb250ZW50VHlwZRIYCgdjb250ZW50GA8gASgMUgdjb250ZW50EjAKB29wdGlvbnMYFSABKAsyFi5wYi5Ob3RpY2VEYXRhLk9wdGlvbnNSB29wdGlvbnMSEAoDZXh0GB8gASgMUgNleHQagwEKB09wdGlvbnMSKgoQc3RvcmFnZUZvckNsaWVudBgBIAEoCFIQc3RvcmFnZUZvckNsaWVudBIkCg11cGRhdGVDb252TXNnGAIgASgIUg11cGRhdGVDb252TXNnEiYKDm9ubGluZVB1c2hPbmNlGAMgASgIUg5vbmxpbmVQdXNoT25jZQ==');
@$core.Deprecated('Use noticeDataListDescriptor instead')
const NoticeDataList$json = const {
  '1': 'NoticeDataList',
  '2': const [
    const {
      '1': 'noticeDataList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.NoticeData',
      '10': 'noticeDataList'
    },
  ],
};

/// Descriptor for `NoticeDataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeDataListDescriptor = $convert.base64Decode(
    'Cg5Ob3RpY2VEYXRhTGlzdBI2Cg5ub3RpY2VEYXRhTGlzdBgBIAMoCzIOLnBiLk5vdGljZURhdGFSDm5vdGljZURhdGFMaXN0');
@$core.Deprecated('Use sendMsgListReqDescriptor instead')
const SendMsgListReq$json = const {
  '1': 'SendMsgListReq',
  '2': const [
    const {
      '1': 'commonReq',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonReq',
      '10': 'commonReq'
    },
    const {
      '1': 'msgDataList',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'msgDataList'
    },
    const {
      '1': 'deliverAfter',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'deliverAfter',
      '17': true
    },
  ],
  '8': const [
    const {'1': '_deliverAfter'},
  ],
};

/// Descriptor for `SendMsgListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgListReqDescriptor = $convert.base64Decode(
    'Cg5TZW5kTXNnTGlzdFJlcRIrCgljb21tb25SZXEYASABKAsyDS5wYi5Db21tb25SZXFSCWNvbW1vblJlcRItCgttc2dEYXRhTGlzdBgCIAMoCzILLnBiLk1zZ0RhdGFSC21zZ0RhdGFMaXN0EicKDGRlbGl2ZXJBZnRlchgLIAEoBUgAUgxkZWxpdmVyQWZ0ZXKIAQFCDwoNX2RlbGl2ZXJBZnRlcg==');
@$core.Deprecated('Use sendMsgListRespDescriptor instead')
const SendMsgListResp$json = const {
  '1': 'SendMsgListResp',
  '2': const [
    const {
      '1': 'commonResp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonResp',
      '10': 'commonResp'
    },
  ],
};

/// Descriptor for `SendMsgListResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgListRespDescriptor = $convert.base64Decode(
    'Cg9TZW5kTXNnTGlzdFJlc3ASLgoKY29tbW9uUmVzcBgBIAEoCzIOLnBiLkNvbW1vblJlc3BSCmNvbW1vblJlc3A=');
@$core.Deprecated('Use batchGetMsgListByConvIdReqDescriptor instead')
const BatchGetMsgListByConvIdReq$json = const {
  '1': 'BatchGetMsgListByConvIdReq',
  '2': const [
    const {
      '1': 'commonReq',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonReq',
      '10': 'commonReq'
    },
    const {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pb.BatchGetMsgListByConvIdReq.Item',
      '10': 'items'
    },
    const {'1': 'push', '3': 3, '4': 1, '5': 8, '10': 'push'},
  ],
  '3': const [BatchGetMsgListByConvIdReq_Item$json],
};

@$core.Deprecated('Use batchGetMsgListByConvIdReqDescriptor instead')
const BatchGetMsgListByConvIdReq_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'convId', '3': 1, '4': 1, '5': 9, '10': 'convId'},
    const {'1': 'seqList', '3': 2, '4': 3, '5': 9, '10': 'seqList'},
  ],
};

/// Descriptor for `BatchGetMsgListByConvIdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetMsgListByConvIdReqDescriptor =
    $convert.base64Decode(
        'ChpCYXRjaEdldE1zZ0xpc3RCeUNvbnZJZFJlcRIrCgljb21tb25SZXEYASABKAsyDS5wYi5Db21tb25SZXFSCWNvbW1vblJlcRI5CgVpdGVtcxgCIAMoCzIjLnBiLkJhdGNoR2V0TXNnTGlzdEJ5Q29udklkUmVxLkl0ZW1SBWl0ZW1zEhIKBHB1c2gYAyABKAhSBHB1c2gaOAoESXRlbRIWCgZjb252SWQYASABKAlSBmNvbnZJZBIYCgdzZXFMaXN0GAIgAygJUgdzZXFMaXN0');
@$core.Deprecated('Use getMsgListRespDescriptor instead')
const GetMsgListResp$json = const {
  '1': 'GetMsgListResp',
  '2': const [
    const {
      '1': 'commonResp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonResp',
      '10': 'commonResp'
    },
    const {
      '1': 'msgDataList',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'msgDataList'
    },
  ],
};

/// Descriptor for `GetMsgListResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMsgListRespDescriptor = $convert.base64Decode(
    'Cg5HZXRNc2dMaXN0UmVzcBIuCgpjb21tb25SZXNwGAEgASgLMg4ucGIuQ29tbW9uUmVzcFIKY29tbW9uUmVzcBItCgttc2dEYXRhTGlzdBgCIAMoCzILLnBiLk1zZ0RhdGFSC21zZ0RhdGFMaXN0');
@$core.Deprecated('Use getMsgByIdReqDescriptor instead')
const GetMsgByIdReq$json = const {
  '1': 'GetMsgByIdReq',
  '2': const [
    const {
      '1': 'commonReq',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonReq',
      '10': 'commonReq'
    },
    const {
      '1': 'serverMsgId',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'serverMsgId',
      '17': true
    },
    const {
      '1': 'clientMsgId',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'clientMsgId',
      '17': true
    },
    const {'1': 'push', '3': 4, '4': 1, '5': 8, '10': 'push'},
  ],
  '8': const [
    const {'1': '_serverMsgId'},
    const {'1': '_clientMsgId'},
  ],
};

/// Descriptor for `GetMsgByIdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMsgByIdReqDescriptor = $convert.base64Decode(
    'Cg1HZXRNc2dCeUlkUmVxEisKCWNvbW1vblJlcRgBIAEoCzINLnBiLkNvbW1vblJlcVIJY29tbW9uUmVxEiUKC3NlcnZlck1zZ0lkGAIgASgJSABSC3NlcnZlck1zZ0lkiAEBEiUKC2NsaWVudE1zZ0lkGAMgASgJSAFSC2NsaWVudE1zZ0lkiAEBEhIKBHB1c2gYBCABKAhSBHB1c2hCDgoMX3NlcnZlck1zZ0lkQg4KDF9jbGllbnRNc2dJZA==');
@$core.Deprecated('Use getMsgByIdRespDescriptor instead')
const GetMsgByIdResp$json = const {
  '1': 'GetMsgByIdResp',
  '2': const [
    const {
      '1': 'commonResp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonResp',
      '10': 'commonResp'
    },
    const {
      '1': 'msgData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'msgData'
    },
  ],
};

/// Descriptor for `GetMsgByIdResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMsgByIdRespDescriptor = $convert.base64Decode(
    'Cg5HZXRNc2dCeUlkUmVzcBIuCgpjb21tb25SZXNwGAEgASgLMg4ucGIuQ29tbW9uUmVzcFIKY29tbW9uUmVzcBIlCgdtc2dEYXRhGAIgASgLMgsucGIuTXNnRGF0YVIHbXNnRGF0YQ==');
@$core.Deprecated('Use batchGetConvSeqReqDescriptor instead')
const BatchGetConvSeqReq$json = const {
  '1': 'BatchGetConvSeqReq',
  '2': const [
    const {
      '1': 'commonReq',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonReq',
      '10': 'commonReq'
    },
    const {'1': 'convIdList', '3': 2, '4': 3, '5': 9, '10': 'convIdList'},
  ],
};

/// Descriptor for `BatchGetConvSeqReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetConvSeqReqDescriptor = $convert.base64Decode(
    'ChJCYXRjaEdldENvbnZTZXFSZXESKwoJY29tbW9uUmVxGAEgASgLMg0ucGIuQ29tbW9uUmVxUgljb21tb25SZXESHgoKY29udklkTGlzdBgCIAMoCVIKY29udklkTGlzdA==');
@$core.Deprecated('Use batchGetConvSeqRespDescriptor instead')
const BatchGetConvSeqResp$json = const {
  '1': 'BatchGetConvSeqResp',
  '2': const [
    const {
      '1': 'commonResp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonResp',
      '10': 'commonResp'
    },
    const {
      '1': 'convSeqMap',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pb.BatchGetConvSeqResp.ConvSeqMapEntry',
      '10': 'convSeqMap'
    },
  ],
  '3': const [
    BatchGetConvSeqResp_ConvSeq$json,
    BatchGetConvSeqResp_ConvSeqMapEntry$json
  ],
};

@$core.Deprecated('Use batchGetConvSeqRespDescriptor instead')
const BatchGetConvSeqResp_ConvSeq$json = const {
  '1': 'ConvSeq',
  '2': const [
    const {'1': 'convId', '3': 1, '4': 1, '5': 9, '10': 'convId'},
    const {'1': 'minSeq', '3': 2, '4': 1, '5': 9, '10': 'minSeq'},
    const {'1': 'maxSeq', '3': 3, '4': 1, '5': 9, '10': 'maxSeq'},
    const {'1': 'updateTime', '3': 4, '4': 1, '5': 9, '10': 'updateTime'},
  ],
};

@$core.Deprecated('Use batchGetConvSeqRespDescriptor instead')
const BatchGetConvSeqResp_ConvSeqMapEntry$json = const {
  '1': 'ConvSeqMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pb.BatchGetConvSeqResp.ConvSeq',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `BatchGetConvSeqResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetConvSeqRespDescriptor = $convert.base64Decode(
    'ChNCYXRjaEdldENvbnZTZXFSZXNwEi4KCmNvbW1vblJlc3AYASABKAsyDi5wYi5Db21tb25SZXNwUgpjb21tb25SZXNwEkcKCmNvbnZTZXFNYXAYAiADKAsyJy5wYi5CYXRjaEdldENvbnZTZXFSZXNwLkNvbnZTZXFNYXBFbnRyeVIKY29udlNlcU1hcBpxCgdDb252U2VxEhYKBmNvbnZJZBgBIAEoCVIGY29udklkEhYKBm1pblNlcRgCIAEoCVIGbWluU2VxEhYKBm1heFNlcRgDIAEoCVIGbWF4U2VxEh4KCnVwZGF0ZVRpbWUYBCABKAlSCnVwZGF0ZVRpbWUaXgoPQ29udlNlcU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjUKBXZhbHVlGAIgASgLMh8ucGIuQmF0Y2hHZXRDb252U2VxUmVzcC5Db252U2VxUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use ackNoticeDataReqDescriptor instead')
const AckNoticeDataReq$json = const {
  '1': 'AckNoticeDataReq',
  '2': const [
    const {
      '1': 'commonReq',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonReq',
      '10': 'commonReq'
    },
    const {'1': 'noticeId', '3': 2, '4': 1, '5': 9, '10': 'noticeId'},
    const {'1': 'success', '3': 3, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AckNoticeDataReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackNoticeDataReqDescriptor = $convert.base64Decode(
    'ChBBY2tOb3RpY2VEYXRhUmVxEisKCWNvbW1vblJlcRgBIAEoCzINLnBiLkNvbW1vblJlcVIJY29tbW9uUmVxEhoKCG5vdGljZUlkGAIgASgJUghub3RpY2VJZBIYCgdzdWNjZXNzGAMgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use ackNoticeDataRespDescriptor instead')
const AckNoticeDataResp$json = const {
  '1': 'AckNoticeDataResp',
  '2': const [
    const {
      '1': 'commonResp',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pb.CommonResp',
      '10': 'commonResp'
    },
  ],
};

/// Descriptor for `AckNoticeDataResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackNoticeDataRespDescriptor = $convert.base64Decode(
    'ChFBY2tOb3RpY2VEYXRhUmVzcBIuCgpjb21tb25SZXNwGAEgASgLMg4ucGIuQ29tbW9uUmVzcFIKY29tbW9uUmVzcA==');
