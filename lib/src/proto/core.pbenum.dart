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
  static const PushEvent FriendNotify = PushEvent._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FriendNotify');
  static const PushEvent GroupNotify = PushEvent._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'GroupNotify');
  static const PushEvent SubscribeNotify = PushEvent._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SubscribeNotify');
  static const PushEvent SocialNotify = PushEvent._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SocialNotify');

  static const $core.List<PushEvent> values = <PushEvent>[
    PushMsgDataList,
    FriendNotify,
    GroupNotify,
    SubscribeNotify,
    SocialNotify,
  ];

  static final $core.Map<$core.int, PushEvent> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static PushEvent? valueOf($core.int value) => _byValue[value];

  const PushEvent._($core.int v, $core.String n) : super(v, n);
}

class ContentType extends $pb.ProtobufEnum {
  static const ContentType UNKNOWN = ContentType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN');
  static const ContentType TYPING = ContentType._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TYPING');
  static const ContentType READ = ContentType._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'READ');
  static const ContentType REVOKE = ContentType._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'REVOKE');
  static const ContentType TEXT = ContentType._(
      11,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TEXT');
  static const ContentType IMAGE = ContentType._(
      12,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IMAGE');
  static const ContentType AUDIO = ContentType._(
      13,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'AUDIO');
  static const ContentType VIDEO = ContentType._(
      14,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'VIDEO');
  static const ContentType FILE = ContentType._(
      15,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FILE');
  static const ContentType LOCATION = ContentType._(
      16,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'LOCATION');
  static const ContentType CARD = ContentType._(
      17,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CARD');
  static const ContentType MERGE = ContentType._(
      18,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'MERGE');
  static const ContentType EMOJI = ContentType._(
      19,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EMOJI');
  static const ContentType COMMAND = ContentType._(
      20,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'COMMAND');
  static const ContentType CONV_LIST_CHANGE = ContentType._(
      51,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CONV_LIST_CHANGE');
  static const ContentType PROFILE_CHANGE = ContentType._(
      52,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PROFILE_CHANGE');
  static const ContentType CONV_INFO_CHANGE = ContentType._(
      53,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CONV_INFO_CHANGE');
  static const ContentType CONV_PROFILE_CHANGE = ContentType._(
      54,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CONV_PROFILE_CHANGE');
  static const ContentType CONV_MEMBER_CHANGE = ContentType._(
      55,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CONV_MEMBER_CHANGE');
  static const ContentType CUSTOM = ContentType._(
      100,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CUSTOM');

  static const $core.List<ContentType> values = <ContentType>[
    UNKNOWN,
    TYPING,
    READ,
    REVOKE,
    TEXT,
    IMAGE,
    AUDIO,
    VIDEO,
    FILE,
    LOCATION,
    CARD,
    MERGE,
    EMOJI,
    COMMAND,
    CONV_LIST_CHANGE,
    PROFILE_CHANGE,
    CONV_INFO_CHANGE,
    CONV_PROFILE_CHANGE,
    CONV_MEMBER_CHANGE,
    CUSTOM,
  ];

  static final $core.Map<$core.int, ContentType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ContentType? valueOf($core.int value) => _byValue[value];

  const ContentType._($core.int v, $core.String n) : super(v, n);
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
