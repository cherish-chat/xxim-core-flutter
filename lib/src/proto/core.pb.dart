///
//  Generated code. Do not modify.
//  source: core.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'core.pbenum.dart';

export 'core.pbenum.dart';

class CommonReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CommonReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userId',
        protoName: 'userId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'token')
    ..aOS(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deviceModel',
        protoName: 'deviceModel')
    ..aOS(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deviceId',
        protoName: 'deviceId')
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'osVersion',
        protoName: 'osVersion')
    ..aOS(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'platform')
    ..aOS(
        21,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appVersion',
        protoName: 'appVersion')
    ..aOS(
        22,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'language')
    ..a<$core.List<$core.int>>(
        31,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..aOS(
        41,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ip')
    ..aOS(
        42,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userAgent',
        protoName: 'userAgent')
    ..hasRequiredFields = false;

  CommonReq._() : super();

  factory CommonReq({
    $core.String? userId,
    $core.String? token,
    $core.String? deviceModel,
    $core.String? deviceId,
    $core.String? osVersion,
    $core.String? platform,
    $core.String? appVersion,
    $core.String? language,
    $core.List<$core.int>? data,
    $core.String? ip,
    $core.String? userAgent,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (token != null) {
      _result.token = token;
    }
    if (deviceModel != null) {
      _result.deviceModel = deviceModel;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (osVersion != null) {
      _result.osVersion = osVersion;
    }
    if (platform != null) {
      _result.platform = platform;
    }
    if (appVersion != null) {
      _result.appVersion = appVersion;
    }
    if (language != null) {
      _result.language = language;
    }
    if (data != null) {
      _result.data = data;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (userAgent != null) {
      _result.userAgent = userAgent;
    }
    return _result;
  }

  factory CommonReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory CommonReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommonReq clone() => CommonReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommonReq copyWith(void Function(CommonReq) updates) =>
      super.copyWith((message) => updates(message as CommonReq))
          as CommonReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonReq create() => CommonReq._();

  CommonReq createEmptyInstance() => create();

  static $pb.PbList<CommonReq> createRepeated() => $pb.PbList<CommonReq>();

  @$core.pragma('dart2js:noInline')
  static CommonReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonReq>(create);
  static CommonReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);

  @$pb.TagNumber(1)
  set userId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);

  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);

  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);

  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(11)
  $core.String get deviceModel => $_getSZ(2);

  @$pb.TagNumber(11)
  set deviceModel($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeviceModel() => $_has(2);

  @$pb.TagNumber(11)
  void clearDeviceModel() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get deviceId => $_getSZ(3);

  @$pb.TagNumber(12)
  set deviceId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasDeviceId() => $_has(3);

  @$pb.TagNumber(12)
  void clearDeviceId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get osVersion => $_getSZ(4);

  @$pb.TagNumber(13)
  set osVersion($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasOsVersion() => $_has(4);

  @$pb.TagNumber(13)
  void clearOsVersion() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get platform => $_getSZ(5);

  @$pb.TagNumber(14)
  set platform($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPlatform() => $_has(5);

  @$pb.TagNumber(14)
  void clearPlatform() => clearField(14);

  @$pb.TagNumber(21)
  $core.String get appVersion => $_getSZ(6);

  @$pb.TagNumber(21)
  set appVersion($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasAppVersion() => $_has(6);

  @$pb.TagNumber(21)
  void clearAppVersion() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get language => $_getSZ(7);

  @$pb.TagNumber(22)
  set language($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasLanguage() => $_has(7);

  @$pb.TagNumber(22)
  void clearLanguage() => clearField(22);

  @$pb.TagNumber(31)
  $core.List<$core.int> get data => $_getN(8);

  @$pb.TagNumber(31)
  set data($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(31)
  $core.bool hasData() => $_has(8);

  @$pb.TagNumber(31)
  void clearData() => clearField(31);

  @$pb.TagNumber(41)
  $core.String get ip => $_getSZ(9);

  @$pb.TagNumber(41)
  set ip($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasIp() => $_has(9);

  @$pb.TagNumber(41)
  void clearIp() => clearField(41);

  @$pb.TagNumber(42)
  $core.String get userAgent => $_getSZ(10);

  @$pb.TagNumber(42)
  set userAgent($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(42)
  $core.bool hasUserAgent() => $_has(10);

  @$pb.TagNumber(42)
  void clearUserAgent() => clearField(42);
}

class CommonResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CommonResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..e<CommonResp_Code>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'code',
        $pb.PbFieldType.OE,
        defaultOrMaker: CommonResp_Code.Success,
        valueOf: CommonResp_Code.valueOf,
        enumValues: CommonResp_Code.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msg')
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  CommonResp._() : super();

  factory CommonResp({
    CommonResp_Code? code,
    $core.String? msg,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }

  factory CommonResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory CommonResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommonResp clone() => CommonResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommonResp copyWith(void Function(CommonResp) updates) =>
      super.copyWith((message) => updates(message as CommonResp))
          as CommonResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonResp create() => CommonResp._();

  CommonResp createEmptyInstance() => create();

  static $pb.PbList<CommonResp> createRepeated() => $pb.PbList<CommonResp>();

  @$core.pragma('dart2js:noInline')
  static CommonResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommonResp>(create);
  static CommonResp? _defaultInstance;

  @$pb.TagNumber(1)
  CommonResp_Code get code => $_getN(0);

  @$pb.TagNumber(1)
  set code(CommonResp_Code v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);

  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);

  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class PushBody extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PushBody',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..e<PushEvent>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'event',
        $pb.PbFieldType.OE,
        defaultOrMaker: PushEvent.PushMsgDataList,
        valueOf: PushEvent.valueOf,
        enumValues: PushEvent.values)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  PushBody._() : super();

  factory PushBody({
    PushEvent? event,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }

  factory PushBody.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PushBody.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PushBody clone() => PushBody()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PushBody copyWith(void Function(PushBody) updates) =>
      super.copyWith((message) => updates(message as PushBody))
          as PushBody; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushBody create() => PushBody._();

  PushBody createEmptyInstance() => create();

  static $pb.PbList<PushBody> createRepeated() => $pb.PbList<PushBody>();

  @$core.pragma('dart2js:noInline')
  static PushBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushBody>(create);
  static PushBody? _defaultInstance;

  @$pb.TagNumber(1)
  PushEvent get event => $_getN(0);

  @$pb.TagNumber(1)
  set event(PushEvent v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);

  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);

  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);

  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class MsgData_OfflinePush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgData.OfflinePush',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'content')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'payload')
    ..hasRequiredFields = false;

  MsgData_OfflinePush._() : super();

  factory MsgData_OfflinePush({
    $core.String? title,
    $core.String? content,
    $core.String? payload,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }

  factory MsgData_OfflinePush.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgData_OfflinePush.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgData_OfflinePush clone() => MsgData_OfflinePush()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgData_OfflinePush copyWith(void Function(MsgData_OfflinePush) updates) =>
      super.copyWith((message) => updates(message as MsgData_OfflinePush))
          as MsgData_OfflinePush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgData_OfflinePush create() => MsgData_OfflinePush._();

  MsgData_OfflinePush createEmptyInstance() => create();

  static $pb.PbList<MsgData_OfflinePush> createRepeated() =>
      $pb.PbList<MsgData_OfflinePush>();

  @$core.pragma('dart2js:noInline')
  static MsgData_OfflinePush getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgData_OfflinePush>(create);
  static MsgData_OfflinePush? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);

  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);

  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);

  @$pb.TagNumber(2)
  set content($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);

  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);

  @$pb.TagNumber(3)
  set payload($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);

  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
}

class MsgData_Options extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgData.Options',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'offlinePush',
        protoName: 'offlinePush')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storageForServer',
        protoName: 'storageForServer')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storageForClient',
        protoName: 'storageForClient')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unreadCount',
        protoName: 'unreadCount')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'needDecrypt',
        protoName: 'needDecrypt')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateConv',
        protoName: 'updateConv')
    ..hasRequiredFields = false;

  MsgData_Options._() : super();

  factory MsgData_Options({
    $core.bool? offlinePush,
    $core.bool? storageForServer,
    $core.bool? storageForClient,
    $core.bool? unreadCount,
    $core.bool? needDecrypt,
    $core.bool? updateConv,
  }) {
    final _result = create();
    if (offlinePush != null) {
      _result.offlinePush = offlinePush;
    }
    if (storageForServer != null) {
      _result.storageForServer = storageForServer;
    }
    if (storageForClient != null) {
      _result.storageForClient = storageForClient;
    }
    if (unreadCount != null) {
      _result.unreadCount = unreadCount;
    }
    if (needDecrypt != null) {
      _result.needDecrypt = needDecrypt;
    }
    if (updateConv != null) {
      _result.updateConv = updateConv;
    }
    return _result;
  }

  factory MsgData_Options.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgData_Options.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgData_Options clone() => MsgData_Options()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgData_Options copyWith(void Function(MsgData_Options) updates) =>
      super.copyWith((message) => updates(message as MsgData_Options))
          as MsgData_Options; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgData_Options create() => MsgData_Options._();

  MsgData_Options createEmptyInstance() => create();

  static $pb.PbList<MsgData_Options> createRepeated() =>
      $pb.PbList<MsgData_Options>();

  @$core.pragma('dart2js:noInline')
  static MsgData_Options getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgData_Options>(create);
  static MsgData_Options? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get offlinePush => $_getBF(0);

  @$pb.TagNumber(1)
  set offlinePush($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOfflinePush() => $_has(0);

  @$pb.TagNumber(1)
  void clearOfflinePush() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get storageForServer => $_getBF(1);

  @$pb.TagNumber(2)
  set storageForServer($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStorageForServer() => $_has(1);

  @$pb.TagNumber(2)
  void clearStorageForServer() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get storageForClient => $_getBF(2);

  @$pb.TagNumber(3)
  set storageForClient($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStorageForClient() => $_has(2);

  @$pb.TagNumber(3)
  void clearStorageForClient() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get unreadCount => $_getBF(3);

  @$pb.TagNumber(4)
  set unreadCount($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnreadCount() => $_has(3);

  @$pb.TagNumber(4)
  void clearUnreadCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get needDecrypt => $_getBF(4);

  @$pb.TagNumber(5)
  set needDecrypt($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNeedDecrypt() => $_has(4);

  @$pb.TagNumber(5)
  void clearNeedDecrypt() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get updateConv => $_getBF(5);

  @$pb.TagNumber(6)
  set updateConv($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdateConv() => $_has(5);

  @$pb.TagNumber(6)
  void clearUpdateConv() => clearField(6);
}

class MsgData_Receiver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgData.Receiver',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userId',
        protoName: 'userId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupId',
        protoName: 'groupId')
    ..hasRequiredFields = false;

  MsgData_Receiver._() : super();

  factory MsgData_Receiver({
    $core.String? userId,
    $core.String? groupId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }

  factory MsgData_Receiver.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgData_Receiver.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgData_Receiver clone() => MsgData_Receiver()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgData_Receiver copyWith(void Function(MsgData_Receiver) updates) =>
      super.copyWith((message) => updates(message as MsgData_Receiver))
          as MsgData_Receiver; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgData_Receiver create() => MsgData_Receiver._();

  MsgData_Receiver createEmptyInstance() => create();

  static $pb.PbList<MsgData_Receiver> createRepeated() =>
      $pb.PbList<MsgData_Receiver>();

  @$core.pragma('dart2js:noInline')
  static MsgData_Receiver getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgData_Receiver>(create);
  static MsgData_Receiver? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);

  @$pb.TagNumber(1)
  set userId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);

  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get groupId => $_getSZ(1);

  @$pb.TagNumber(2)
  set groupId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);

  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class MsgData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'clientMsgId',
        protoName: 'clientMsgId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverMsgId',
        protoName: 'serverMsgId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'clientTime',
        protoName: 'clientTime')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverTime',
        protoName: 'serverTime')
    ..aOS(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sender')
    ..aOS(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'senderInfo',
        protoName: 'senderInfo')
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'senderConvInfo',
        protoName: 'senderConvInfo')
    ..aOM<MsgData_Receiver>(
        21,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'receiver',
        subBuilder: MsgData_Receiver.create)
    ..aOS(
        22,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convId',
        protoName: 'convId')
    ..pPS(
        23,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'atUsers',
        protoName: 'atUsers')
    ..e<ContentType>(
        31,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentType',
        $pb.PbFieldType.OE,
        protoName: 'contentType',
        defaultOrMaker: ContentType.UNKNOWN,
        valueOf: ContentType.valueOf,
        enumValues: ContentType.values)
    ..a<$core.List<$core.int>>(
        32,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'content',
        $pb.PbFieldType.OY)
    ..aOS(
        33,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seq')
    ..aOM<MsgData_Options>(
        41,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options',
        subBuilder: MsgData_Options.create)
    ..aOM<MsgData_OfflinePush>(
        42,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'offlinePush',
        protoName: 'offlinePush',
        subBuilder: MsgData_OfflinePush.create)
    ..a<$core.List<$core.int>>(
        100,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ext',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  MsgData._() : super();

  factory MsgData({
    $core.String? clientMsgId,
    $core.String? serverMsgId,
    $core.String? clientTime,
    $core.String? serverTime,
    $core.String? sender,
    $core.String? senderInfo,
    $core.String? senderConvInfo,
    MsgData_Receiver? receiver,
    $core.String? convId,
    $core.Iterable<$core.String>? atUsers,
    ContentType? contentType,
    $core.List<$core.int>? content,
    $core.String? seq,
    MsgData_Options? options,
    MsgData_OfflinePush? offlinePush,
    $core.List<$core.int>? ext,
  }) {
    final _result = create();
    if (clientMsgId != null) {
      _result.clientMsgId = clientMsgId;
    }
    if (serverMsgId != null) {
      _result.serverMsgId = serverMsgId;
    }
    if (clientTime != null) {
      _result.clientTime = clientTime;
    }
    if (serverTime != null) {
      _result.serverTime = serverTime;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (senderInfo != null) {
      _result.senderInfo = senderInfo;
    }
    if (senderConvInfo != null) {
      _result.senderConvInfo = senderConvInfo;
    }
    if (receiver != null) {
      _result.receiver = receiver;
    }
    if (convId != null) {
      _result.convId = convId;
    }
    if (atUsers != null) {
      _result.atUsers.addAll(atUsers);
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (content != null) {
      _result.content = content;
    }
    if (seq != null) {
      _result.seq = seq;
    }
    if (options != null) {
      _result.options = options;
    }
    if (offlinePush != null) {
      _result.offlinePush = offlinePush;
    }
    if (ext != null) {
      _result.ext = ext;
    }
    return _result;
  }

  factory MsgData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgData clone() => MsgData()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgData copyWith(void Function(MsgData) updates) =>
      super.copyWith((message) => updates(message as MsgData))
          as MsgData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgData create() => MsgData._();

  MsgData createEmptyInstance() => create();

  static $pb.PbList<MsgData> createRepeated() => $pb.PbList<MsgData>();

  @$core.pragma('dart2js:noInline')
  static MsgData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgData>(create);
  static MsgData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientMsgId => $_getSZ(0);

  @$pb.TagNumber(1)
  set clientMsgId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClientMsgId() => $_has(0);

  @$pb.TagNumber(1)
  void clearClientMsgId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serverMsgId => $_getSZ(1);

  @$pb.TagNumber(2)
  set serverMsgId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServerMsgId() => $_has(1);

  @$pb.TagNumber(2)
  void clearServerMsgId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientTime => $_getSZ(2);

  @$pb.TagNumber(3)
  set clientTime($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasClientTime() => $_has(2);

  @$pb.TagNumber(3)
  void clearClientTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serverTime => $_getSZ(3);

  @$pb.TagNumber(4)
  set serverTime($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasServerTime() => $_has(3);

  @$pb.TagNumber(4)
  void clearServerTime() => clearField(4);

  @$pb.TagNumber(11)
  $core.String get sender => $_getSZ(4);

  @$pb.TagNumber(11)
  set sender($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasSender() => $_has(4);

  @$pb.TagNumber(11)
  void clearSender() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get senderInfo => $_getSZ(5);

  @$pb.TagNumber(12)
  set senderInfo($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSenderInfo() => $_has(5);

  @$pb.TagNumber(12)
  void clearSenderInfo() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get senderConvInfo => $_getSZ(6);

  @$pb.TagNumber(13)
  set senderConvInfo($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSenderConvInfo() => $_has(6);

  @$pb.TagNumber(13)
  void clearSenderConvInfo() => clearField(13);

  @$pb.TagNumber(21)
  MsgData_Receiver get receiver => $_getN(7);

  @$pb.TagNumber(21)
  set receiver(MsgData_Receiver v) {
    setField(21, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasReceiver() => $_has(7);

  @$pb.TagNumber(21)
  void clearReceiver() => clearField(21);

  @$pb.TagNumber(21)
  MsgData_Receiver ensureReceiver() => $_ensure(7);

  @$pb.TagNumber(22)
  $core.String get convId => $_getSZ(8);

  @$pb.TagNumber(22)
  set convId($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasConvId() => $_has(8);

  @$pb.TagNumber(22)
  void clearConvId() => clearField(22);

  @$pb.TagNumber(23)
  $core.List<$core.String> get atUsers => $_getList(9);

  @$pb.TagNumber(31)
  ContentType get contentType => $_getN(10);

  @$pb.TagNumber(31)
  set contentType(ContentType v) {
    setField(31, v);
  }

  @$pb.TagNumber(31)
  $core.bool hasContentType() => $_has(10);

  @$pb.TagNumber(31)
  void clearContentType() => clearField(31);

  @$pb.TagNumber(32)
  $core.List<$core.int> get content => $_getN(11);

  @$pb.TagNumber(32)
  set content($core.List<$core.int> v) {
    $_setBytes(11, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasContent() => $_has(11);

  @$pb.TagNumber(32)
  void clearContent() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get seq => $_getSZ(12);

  @$pb.TagNumber(33)
  set seq($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasSeq() => $_has(12);

  @$pb.TagNumber(33)
  void clearSeq() => clearField(33);

  @$pb.TagNumber(41)
  MsgData_Options get options => $_getN(13);

  @$pb.TagNumber(41)
  set options(MsgData_Options v) {
    setField(41, v);
  }

  @$pb.TagNumber(41)
  $core.bool hasOptions() => $_has(13);

  @$pb.TagNumber(41)
  void clearOptions() => clearField(41);

  @$pb.TagNumber(41)
  MsgData_Options ensureOptions() => $_ensure(13);

  @$pb.TagNumber(42)
  MsgData_OfflinePush get offlinePush => $_getN(14);

  @$pb.TagNumber(42)
  set offlinePush(MsgData_OfflinePush v) {
    setField(42, v);
  }

  @$pb.TagNumber(42)
  $core.bool hasOfflinePush() => $_has(14);

  @$pb.TagNumber(42)
  void clearOfflinePush() => clearField(42);

  @$pb.TagNumber(42)
  MsgData_OfflinePush ensureOfflinePush() => $_ensure(14);

  @$pb.TagNumber(100)
  $core.List<$core.int> get ext => $_getN(15);

  @$pb.TagNumber(100)
  set ext($core.List<$core.int> v) {
    $_setBytes(15, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasExt() => $_has(15);

  @$pb.TagNumber(100)
  void clearExt() => clearField(100);
}

class MsgDataList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgDataList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<MsgData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msgDataList',
        $pb.PbFieldType.PM,
        protoName: 'msgDataList',
        subBuilder: MsgData.create)
    ..hasRequiredFields = false;

  MsgDataList._() : super();

  factory MsgDataList({
    $core.Iterable<MsgData>? msgDataList,
  }) {
    final _result = create();
    if (msgDataList != null) {
      _result.msgDataList.addAll(msgDataList);
    }
    return _result;
  }

  factory MsgDataList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgDataList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgDataList clone() => MsgDataList()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgDataList copyWith(void Function(MsgDataList) updates) =>
      super.copyWith((message) => updates(message as MsgDataList))
          as MsgDataList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDataList create() => MsgDataList._();

  MsgDataList createEmptyInstance() => create();

  static $pb.PbList<MsgDataList> createRepeated() => $pb.PbList<MsgDataList>();

  @$core.pragma('dart2js:noInline')
  static MsgDataList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgDataList>(create);
  static MsgDataList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MsgData> get msgDataList => $_getList(0);
}

class SendMsgListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SendMsgListReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonReq>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonReq',
        protoName: 'commonReq',
        subBuilder: CommonReq.create)
    ..pc<MsgData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msgDataList',
        $pb.PbFieldType.PM,
        protoName: 'msgDataList',
        subBuilder: MsgData.create)
    ..a<$core.int>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deliverAfter',
        $pb.PbFieldType.O3,
        protoName: 'deliverAfter')
    ..hasRequiredFields = false;

  SendMsgListReq._() : super();

  factory SendMsgListReq({
    CommonReq? commonReq,
    $core.Iterable<MsgData>? msgDataList,
    $core.int? deliverAfter,
  }) {
    final _result = create();
    if (commonReq != null) {
      _result.commonReq = commonReq;
    }
    if (msgDataList != null) {
      _result.msgDataList.addAll(msgDataList);
    }
    if (deliverAfter != null) {
      _result.deliverAfter = deliverAfter;
    }
    return _result;
  }

  factory SendMsgListReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory SendMsgListReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendMsgListReq clone() => SendMsgListReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendMsgListReq copyWith(void Function(SendMsgListReq) updates) =>
      super.copyWith((message) => updates(message as SendMsgListReq))
          as SendMsgListReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendMsgListReq create() => SendMsgListReq._();

  SendMsgListReq createEmptyInstance() => create();

  static $pb.PbList<SendMsgListReq> createRepeated() =>
      $pb.PbList<SendMsgListReq>();

  @$core.pragma('dart2js:noInline')
  static SendMsgListReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendMsgListReq>(create);
  static SendMsgListReq? _defaultInstance;

  @$pb.TagNumber(1)
  CommonReq get commonReq => $_getN(0);

  @$pb.TagNumber(1)
  set commonReq(CommonReq v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonReq() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonReq() => clearField(1);

  @$pb.TagNumber(1)
  CommonReq ensureCommonReq() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<MsgData> get msgDataList => $_getList(1);

  @$pb.TagNumber(11)
  $core.int get deliverAfter => $_getIZ(2);

  @$pb.TagNumber(11)
  set deliverAfter($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeliverAfter() => $_has(2);

  @$pb.TagNumber(11)
  void clearDeliverAfter() => clearField(11);
}

class SendMsgListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SendMsgListResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonResp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonResp',
        protoName: 'commonResp',
        subBuilder: CommonResp.create)
    ..hasRequiredFields = false;

  SendMsgListResp._() : super();

  factory SendMsgListResp({
    CommonResp? commonResp,
  }) {
    final _result = create();
    if (commonResp != null) {
      _result.commonResp = commonResp;
    }
    return _result;
  }

  factory SendMsgListResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory SendMsgListResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendMsgListResp clone() => SendMsgListResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendMsgListResp copyWith(void Function(SendMsgListResp) updates) =>
      super.copyWith((message) => updates(message as SendMsgListResp))
          as SendMsgListResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendMsgListResp create() => SendMsgListResp._();

  SendMsgListResp createEmptyInstance() => create();

  static $pb.PbList<SendMsgListResp> createRepeated() =>
      $pb.PbList<SendMsgListResp>();

  @$core.pragma('dart2js:noInline')
  static SendMsgListResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendMsgListResp>(create);
  static SendMsgListResp? _defaultInstance;

  @$pb.TagNumber(1)
  CommonResp get commonResp => $_getN(0);

  @$pb.TagNumber(1)
  set commonResp(CommonResp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonResp() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonResp() => clearField(1);

  @$pb.TagNumber(1)
  CommonResp ensureCommonResp() => $_ensure(0);
}

class GetMsgListByConvIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMsgListByConvIdReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonReq>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonReq',
        protoName: 'commonReq',
        subBuilder: CommonReq.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convId',
        protoName: 'convId')
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seqList',
        protoName: 'seqList')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'push')
    ..hasRequiredFields = false;

  GetMsgListByConvIdReq._() : super();

  factory GetMsgListByConvIdReq({
    CommonReq? commonReq,
    $core.String? convId,
    $core.Iterable<$core.String>? seqList,
    $core.bool? push,
  }) {
    final _result = create();
    if (commonReq != null) {
      _result.commonReq = commonReq;
    }
    if (convId != null) {
      _result.convId = convId;
    }
    if (seqList != null) {
      _result.seqList.addAll(seqList);
    }
    if (push != null) {
      _result.push = push;
    }
    return _result;
  }

  factory GetMsgListByConvIdReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMsgListByConvIdReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMsgListByConvIdReq clone() =>
      GetMsgListByConvIdReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMsgListByConvIdReq copyWith(
          void Function(GetMsgListByConvIdReq) updates) =>
      super.copyWith((message) => updates(message as GetMsgListByConvIdReq))
          as GetMsgListByConvIdReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgListByConvIdReq create() => GetMsgListByConvIdReq._();

  GetMsgListByConvIdReq createEmptyInstance() => create();

  static $pb.PbList<GetMsgListByConvIdReq> createRepeated() =>
      $pb.PbList<GetMsgListByConvIdReq>();

  @$core.pragma('dart2js:noInline')
  static GetMsgListByConvIdReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMsgListByConvIdReq>(create);
  static GetMsgListByConvIdReq? _defaultInstance;

  @$pb.TagNumber(1)
  CommonReq get commonReq => $_getN(0);

  @$pb.TagNumber(1)
  set commonReq(CommonReq v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonReq() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonReq() => clearField(1);

  @$pb.TagNumber(1)
  CommonReq ensureCommonReq() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get convId => $_getSZ(1);

  @$pb.TagNumber(2)
  set convId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConvId() => $_has(1);

  @$pb.TagNumber(2)
  void clearConvId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get seqList => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get push => $_getBF(3);

  @$pb.TagNumber(4)
  set push($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPush() => $_has(3);

  @$pb.TagNumber(4)
  void clearPush() => clearField(4);
}

class GetMsgListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMsgListResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonResp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonResp',
        protoName: 'commonResp',
        subBuilder: CommonResp.create)
    ..pc<MsgData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msgDataList',
        $pb.PbFieldType.PM,
        protoName: 'msgDataList',
        subBuilder: MsgData.create)
    ..hasRequiredFields = false;

  GetMsgListResp._() : super();

  factory GetMsgListResp({
    CommonResp? commonResp,
    $core.Iterable<MsgData>? msgDataList,
  }) {
    final _result = create();
    if (commonResp != null) {
      _result.commonResp = commonResp;
    }
    if (msgDataList != null) {
      _result.msgDataList.addAll(msgDataList);
    }
    return _result;
  }

  factory GetMsgListResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMsgListResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMsgListResp clone() => GetMsgListResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMsgListResp copyWith(void Function(GetMsgListResp) updates) =>
      super.copyWith((message) => updates(message as GetMsgListResp))
          as GetMsgListResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgListResp create() => GetMsgListResp._();

  GetMsgListResp createEmptyInstance() => create();

  static $pb.PbList<GetMsgListResp> createRepeated() =>
      $pb.PbList<GetMsgListResp>();

  @$core.pragma('dart2js:noInline')
  static GetMsgListResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMsgListResp>(create);
  static GetMsgListResp? _defaultInstance;

  @$pb.TagNumber(1)
  CommonResp get commonResp => $_getN(0);

  @$pb.TagNumber(1)
  set commonResp(CommonResp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonResp() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonResp() => clearField(1);

  @$pb.TagNumber(1)
  CommonResp ensureCommonResp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<MsgData> get msgDataList => $_getList(1);
}

class GetMsgByIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMsgByIdReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonReq>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonReq',
        protoName: 'commonReq',
        subBuilder: CommonReq.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverMsgId',
        protoName: 'serverMsgId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'clientMsgId',
        protoName: 'clientMsgId')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'push')
    ..hasRequiredFields = false;

  GetMsgByIdReq._() : super();

  factory GetMsgByIdReq({
    CommonReq? commonReq,
    $core.String? serverMsgId,
    $core.String? clientMsgId,
    $core.bool? push,
  }) {
    final _result = create();
    if (commonReq != null) {
      _result.commonReq = commonReq;
    }
    if (serverMsgId != null) {
      _result.serverMsgId = serverMsgId;
    }
    if (clientMsgId != null) {
      _result.clientMsgId = clientMsgId;
    }
    if (push != null) {
      _result.push = push;
    }
    return _result;
  }

  factory GetMsgByIdReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMsgByIdReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMsgByIdReq clone() => GetMsgByIdReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMsgByIdReq copyWith(void Function(GetMsgByIdReq) updates) =>
      super.copyWith((message) => updates(message as GetMsgByIdReq))
          as GetMsgByIdReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgByIdReq create() => GetMsgByIdReq._();

  GetMsgByIdReq createEmptyInstance() => create();

  static $pb.PbList<GetMsgByIdReq> createRepeated() =>
      $pb.PbList<GetMsgByIdReq>();

  @$core.pragma('dart2js:noInline')
  static GetMsgByIdReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMsgByIdReq>(create);
  static GetMsgByIdReq? _defaultInstance;

  @$pb.TagNumber(1)
  CommonReq get commonReq => $_getN(0);

  @$pb.TagNumber(1)
  set commonReq(CommonReq v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonReq() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonReq() => clearField(1);

  @$pb.TagNumber(1)
  CommonReq ensureCommonReq() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get serverMsgId => $_getSZ(1);

  @$pb.TagNumber(2)
  set serverMsgId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServerMsgId() => $_has(1);

  @$pb.TagNumber(2)
  void clearServerMsgId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientMsgId => $_getSZ(2);

  @$pb.TagNumber(3)
  set clientMsgId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasClientMsgId() => $_has(2);

  @$pb.TagNumber(3)
  void clearClientMsgId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get push => $_getBF(3);

  @$pb.TagNumber(4)
  set push($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPush() => $_has(3);

  @$pb.TagNumber(4)
  void clearPush() => clearField(4);
}

class GetMsgByIdResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMsgByIdResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonResp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonResp',
        protoName: 'commonResp',
        subBuilder: CommonResp.create)
    ..aOM<MsgData>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msgData',
        protoName: 'msgData',
        subBuilder: MsgData.create)
    ..hasRequiredFields = false;

  GetMsgByIdResp._() : super();

  factory GetMsgByIdResp({
    CommonResp? commonResp,
    MsgData? msgData,
  }) {
    final _result = create();
    if (commonResp != null) {
      _result.commonResp = commonResp;
    }
    if (msgData != null) {
      _result.msgData = msgData;
    }
    return _result;
  }

  factory GetMsgByIdResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMsgByIdResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMsgByIdResp clone() => GetMsgByIdResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMsgByIdResp copyWith(void Function(GetMsgByIdResp) updates) =>
      super.copyWith((message) => updates(message as GetMsgByIdResp))
          as GetMsgByIdResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMsgByIdResp create() => GetMsgByIdResp._();

  GetMsgByIdResp createEmptyInstance() => create();

  static $pb.PbList<GetMsgByIdResp> createRepeated() =>
      $pb.PbList<GetMsgByIdResp>();

  @$core.pragma('dart2js:noInline')
  static GetMsgByIdResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMsgByIdResp>(create);
  static GetMsgByIdResp? _defaultInstance;

  @$pb.TagNumber(1)
  CommonResp get commonResp => $_getN(0);

  @$pb.TagNumber(1)
  set commonResp(CommonResp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonResp() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonResp() => clearField(1);

  @$pb.TagNumber(1)
  CommonResp ensureCommonResp() => $_ensure(0);

  @$pb.TagNumber(2)
  MsgData get msgData => $_getN(1);

  @$pb.TagNumber(2)
  set msgData(MsgData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsgData() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsgData() => clearField(2);

  @$pb.TagNumber(2)
  MsgData ensureMsgData() => $_ensure(1);
}

class BatchGetConvSeqReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchGetConvSeqReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonReq>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonReq',
        protoName: 'commonReq',
        subBuilder: CommonReq.create)
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convIdList',
        protoName: 'convIdList')
    ..hasRequiredFields = false;

  BatchGetConvSeqReq._() : super();

  factory BatchGetConvSeqReq({
    CommonReq? commonReq,
    $core.Iterable<$core.String>? convIdList,
  }) {
    final _result = create();
    if (commonReq != null) {
      _result.commonReq = commonReq;
    }
    if (convIdList != null) {
      _result.convIdList.addAll(convIdList);
    }
    return _result;
  }

  factory BatchGetConvSeqReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory BatchGetConvSeqReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqReq clone() => BatchGetConvSeqReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqReq copyWith(void Function(BatchGetConvSeqReq) updates) =>
      super.copyWith((message) => updates(message as BatchGetConvSeqReq))
          as BatchGetConvSeqReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqReq create() => BatchGetConvSeqReq._();

  BatchGetConvSeqReq createEmptyInstance() => create();

  static $pb.PbList<BatchGetConvSeqReq> createRepeated() =>
      $pb.PbList<BatchGetConvSeqReq>();

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetConvSeqReq>(create);
  static BatchGetConvSeqReq? _defaultInstance;

  @$pb.TagNumber(1)
  CommonReq get commonReq => $_getN(0);

  @$pb.TagNumber(1)
  set commonReq(CommonReq v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonReq() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonReq() => clearField(1);

  @$pb.TagNumber(1)
  CommonReq ensureCommonReq() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get convIdList => $_getList(1);
}

class BatchGetConvSeqResp_ConvSeq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchGetConvSeqResp.ConvSeq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convId',
        protoName: 'convId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minSeq',
        protoName: 'minSeq')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxSeq',
        protoName: 'maxSeq')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTime',
        protoName: 'updateTime')
    ..hasRequiredFields = false;

  BatchGetConvSeqResp_ConvSeq._() : super();

  factory BatchGetConvSeqResp_ConvSeq({
    $core.String? convId,
    $core.String? minSeq,
    $core.String? maxSeq,
    $core.String? updateTime,
  }) {
    final _result = create();
    if (convId != null) {
      _result.convId = convId;
    }
    if (minSeq != null) {
      _result.minSeq = minSeq;
    }
    if (maxSeq != null) {
      _result.maxSeq = maxSeq;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }

  factory BatchGetConvSeqResp_ConvSeq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory BatchGetConvSeqResp_ConvSeq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqResp_ConvSeq clone() =>
      BatchGetConvSeqResp_ConvSeq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqResp_ConvSeq copyWith(
          void Function(BatchGetConvSeqResp_ConvSeq) updates) =>
      super.copyWith(
              (message) => updates(message as BatchGetConvSeqResp_ConvSeq))
          as BatchGetConvSeqResp_ConvSeq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqResp_ConvSeq create() =>
      BatchGetConvSeqResp_ConvSeq._();

  BatchGetConvSeqResp_ConvSeq createEmptyInstance() => create();

  static $pb.PbList<BatchGetConvSeqResp_ConvSeq> createRepeated() =>
      $pb.PbList<BatchGetConvSeqResp_ConvSeq>();

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqResp_ConvSeq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetConvSeqResp_ConvSeq>(create);
  static BatchGetConvSeqResp_ConvSeq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get convId => $_getSZ(0);

  @$pb.TagNumber(1)
  set convId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConvId() => $_has(0);

  @$pb.TagNumber(1)
  void clearConvId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get minSeq => $_getSZ(1);

  @$pb.TagNumber(2)
  set minSeq($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinSeq() => $_has(1);

  @$pb.TagNumber(2)
  void clearMinSeq() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get maxSeq => $_getSZ(2);

  @$pb.TagNumber(3)
  set maxSeq($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxSeq() => $_has(2);

  @$pb.TagNumber(3)
  void clearMaxSeq() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get updateTime => $_getSZ(3);

  @$pb.TagNumber(4)
  set updateTime($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdateTime() => $_has(3);

  @$pb.TagNumber(4)
  void clearUpdateTime() => clearField(4);
}

class BatchGetConvSeqResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchGetConvSeqResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOM<CommonResp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commonResp',
        protoName: 'commonResp',
        subBuilder: CommonResp.create)
    ..m<$core.String, BatchGetConvSeqResp_ConvSeq>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convSeqMap',
        protoName: 'convSeqMap',
        entryClassName: 'BatchGetConvSeqResp.ConvSeqMapEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: BatchGetConvSeqResp_ConvSeq.create,
        packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false;

  BatchGetConvSeqResp._() : super();

  factory BatchGetConvSeqResp({
    CommonResp? commonResp,
    $core.Map<$core.String, BatchGetConvSeqResp_ConvSeq>? convSeqMap,
  }) {
    final _result = create();
    if (commonResp != null) {
      _result.commonResp = commonResp;
    }
    if (convSeqMap != null) {
      _result.convSeqMap.addAll(convSeqMap);
    }
    return _result;
  }

  factory BatchGetConvSeqResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory BatchGetConvSeqResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqResp clone() => BatchGetConvSeqResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchGetConvSeqResp copyWith(void Function(BatchGetConvSeqResp) updates) =>
      super.copyWith((message) => updates(message as BatchGetConvSeqResp))
          as BatchGetConvSeqResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqResp create() => BatchGetConvSeqResp._();

  BatchGetConvSeqResp createEmptyInstance() => create();

  static $pb.PbList<BatchGetConvSeqResp> createRepeated() =>
      $pb.PbList<BatchGetConvSeqResp>();

  @$core.pragma('dart2js:noInline')
  static BatchGetConvSeqResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetConvSeqResp>(create);
  static BatchGetConvSeqResp? _defaultInstance;

  @$pb.TagNumber(1)
  CommonResp get commonResp => $_getN(0);

  @$pb.TagNumber(1)
  set commonResp(CommonResp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCommonResp() => $_has(0);

  @$pb.TagNumber(1)
  void clearCommonResp() => clearField(1);

  @$pb.TagNumber(1)
  CommonResp ensureCommonResp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, BatchGetConvSeqResp_ConvSeq> get convSeqMap =>
      $_getMap(1);
}
