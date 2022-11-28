import 'dart:async';
import 'package:dio/dio.dart';
import 'package:xxim_core_flutter/src/connect/params.dart';
import 'package:xxim_core_flutter/src/connect/protocol.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';

typedef SuccessCallback<T> = Function(T data);
typedef ErrorCallback = Function(CommonResp_Code code, {String? msg});

class CoreHttp {
  final Params params;
  late CommonReq commonReq;

  CoreHttp(this.params) {
    commonReq = CommonReq(
      deviceModel: params.deviceModel,
      deviceId: params.deviceId,
      osVersion: params.osVersion,
      platform: params.platform,
      appVersion: params.appVersion,
      language: params.language,
    );
  }

  Dio? _dio;

  void connect({
    required String apiUrl,
    required String token,
    required String userId,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
        connectTimeout: 2000,
        receiveTimeout: 600000,
        sendTimeout: 10000,
        responseType: ResponseType.bytes,
      ),
    );
    commonReq.token = token;
    commonReq.userId = userId;
  }

  void disconnect() {
    _dio?.close(force: true);
    _dio = null;
  }

  bool isConnect() {
    return _dio != null;
  }

  void setLanguage(String language) {
    commonReq.language = language;
  }

  Future<BatchGetConvSeqResp?> batchGetConvSeq({
    required BatchGetConvSeqReq req,
    SuccessCallback<BatchGetConvSeqResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    commonReq.data = req.writeToBuffer();
    List<int> bytes = commonReq.writeToBuffer();
    List<int>? data = await _post(
      path: Protocol.batchGetConvSeq,
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onError: onError,
    );
    if (data != null) {
      BatchGetConvSeqResp resp = BatchGetConvSeqResp.fromBuffer(data);
      if (onSuccess != null) onSuccess(resp);
      return resp;
    }
    return null;
  }

  Future<GetMsgListResp?> getMsgListByConvId({
    required GetMsgListByConvIdReq req,
    SuccessCallback<GetMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    commonReq.data = req.writeToBuffer();
    List<int> bytes = commonReq.writeToBuffer();
    List<int>? data = await _post(
      path: Protocol.getMsgListByConvId,
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onError: onError,
    );
    if (data != null) {
      GetMsgListResp resp = GetMsgListResp.fromBuffer(data);
      if (onSuccess != null) onSuccess(resp);
      return resp;
    }
    return null;
  }

  Future<GetMsgByIdResp?> getMsgById({
    required GetMsgByIdReq req,
    SuccessCallback<GetMsgByIdResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    commonReq.data = req.writeToBuffer();
    List<int> bytes = commonReq.writeToBuffer();
    List<int>? data = await _post(
      path: Protocol.getMsgById,
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onError: onError,
    );
    if (data != null) {
      GetMsgByIdResp resp = GetMsgByIdResp.fromBuffer(data);
      if (onSuccess != null) onSuccess(resp);
      return resp;
    }
    return null;
  }

  Future<bool> sendMsgList({
    required SendMsgListReq req,
    SuccessCallback<bool>? onSuccess,
    ErrorCallback? onError,
  }) async {
    commonReq.data = req.writeToBuffer();
    List<int> bytes = commonReq.writeToBuffer();
    List<int>? data = await _post(
      path: Protocol.sendMsgList,
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onError: onError,
    );
    if (data != null) {
      if (onSuccess != null) onSuccess(true);
      return true;
    }
    return false;
  }

  Future<List<int>?> _post({
    required String path,
    required dynamic data,
    ErrorCallback? onError,
  }) async {
    if (!isConnect()) return null;
    try {
      Response response = await _dio!.post(
        path,
        data: data,
      );
      if (response.statusCode == 200) {
        CommonResp commonResp = CommonResp.fromBuffer(response.data);
        if (commonResp.code == CommonResp_Code.Success) {
          return commonResp.data;
        } else {
          if (onError != null) onError(commonResp.code, msg: commonResp.msg);
        }
      } else {
        if (onError != null) onError(CommonResp_Code.UnknownError);
      }
    } catch (_) {
      if (onError != null) onError(CommonResp_Code.UnknownError);
    }
    return null;
  }
}
