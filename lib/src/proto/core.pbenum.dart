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

  static const $core.List<PushEvent> values = <PushEvent>[
    PushMsgDataList,
    PushNoticeDataList,
  ];

  static final $core.Map<$core.int, PushEvent> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static PushEvent? valueOf($core.int value) => _byValue[value];

  const PushEvent._($core.int v, $core.String n) : super(v, n);
}

class CommonResp_Code extends $pb.ProtobufEnum {
  static const CommonResp_Code Success = CommonResp_Code._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Success');
  static const CommonResp_Code UnknownError = CommonResp_Code._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UnknownError');
  static const CommonResp_Code InternalError = CommonResp_Code._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'InternalError');
  static const CommonResp_Code RequestError = CommonResp_Code._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RequestError');
  static const CommonResp_Code AuthError = CommonResp_Code._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AuthError');
  static const CommonResp_Code ToastError = CommonResp_Code._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ToastError');
  static const CommonResp_Code AlertError = CommonResp_Code._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AlertError');
  static const CommonResp_Code RetryError = CommonResp_Code._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RetryError');

  static const $core.List<CommonResp_Code> values = <CommonResp_Code>[
    Success,
    UnknownError,
    InternalError,
    RequestError,
    AuthError,
    ToastError,
    AlertError,
    RetryError,
  ];

  static final $core.Map<$core.int, CommonResp_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static CommonResp_Code? valueOf($core.int value) => _byValue[value];

  const CommonResp_Code._($core.int v, $core.String n) : super(v, n);
}
