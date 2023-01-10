///
//  Generated code. Do not modify.
//  source: core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME

import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PushEvent extends $pb.ProtobufEnum {
  static const PushEvent PushMsgDataList = PushEvent._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PushMsgDataList');
  static const PushEvent PushNoticeDataList = PushEvent._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PushNoticeDataList');
  static const PushEvent PushResponseBody = PushEvent._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PushResponseBody');

  static const $core.List<PushEvent> values = <PushEvent>[
    PushMsgDataList,
    PushNoticeDataList,
    PushResponseBody,
  ];

  static final $core.Map<$core.int, PushEvent> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static PushEvent? valueOf($core.int value) => _byValue[value];

  const PushEvent._($core.int v, $core.String n) : super(v, n);
}

class ActiveEvent extends $pb.ProtobufEnum {
  static const ActiveEvent SendMsgList = ActiveEvent._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SendMsgList');
  static const ActiveEvent SyncConvSeq = ActiveEvent._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SyncConvSeq');
  static const ActiveEvent SyncMsgList = ActiveEvent._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SyncMsgList');
  static const ActiveEvent AckNotice = ActiveEvent._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AckNotice');
  static const ActiveEvent GetMsgById = ActiveEvent._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'GetMsgById');
  static const ActiveEvent CustomRequest = ActiveEvent._(
      100,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CustomRequest');

  static const $core.List<ActiveEvent> values = <ActiveEvent>[
    SendMsgList,
    SyncConvSeq,
    SyncMsgList,
    AckNotice,
    GetMsgById,
    CustomRequest,
  ];

  static final $core.Map<$core.int, ActiveEvent> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ActiveEvent? valueOf($core.int value) => _byValue[value];

  const ActiveEvent._($core.int v, $core.String n) : super(v, n);
}

class ResponseBody_Code extends $pb.ProtobufEnum {
  static const ResponseBody_Code Success = ResponseBody_Code._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Success');
  static const ResponseBody_Code UnknownError = ResponseBody_Code._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UnknownError');
  static const ResponseBody_Code InternalError = ResponseBody_Code._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'InternalError');
  static const ResponseBody_Code RequestError = ResponseBody_Code._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RequestError');
  static const ResponseBody_Code AuthError = ResponseBody_Code._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AuthError');
  static const ResponseBody_Code ToastError = ResponseBody_Code._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ToastError');
  static const ResponseBody_Code AlertError = ResponseBody_Code._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AlertError');
  static const ResponseBody_Code RetryError = ResponseBody_Code._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RetryError');

  static const $core.List<ResponseBody_Code> values = <ResponseBody_Code>[
    Success,
    UnknownError,
    InternalError,
    RequestError,
    AuthError,
    ToastError,
    AlertError,
    RetryError,
  ];

  static final $core.Map<$core.int, ResponseBody_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ResponseBody_Code? valueOf($core.int value) => _byValue[value];

  const ResponseBody_Code._($core.int v, $core.String n) : super(v, n);
}
