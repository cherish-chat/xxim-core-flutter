import 'package:xxim_core_flutter/src/connect/core_callback.dart';
import 'package:xxim_core_flutter/src/connect/protocol.dart';
import 'package:xxim_core_flutter/src/listener/connect_listener.dart';
import 'package:xxim_core_flutter/src/listener/receive_push_listener.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';
import 'src/socket_none.dart'
    if (dart.library.html) 'src/socket_html.dart'
    if (dart.library.io) 'src/socket_io.dart';

class CoreSocket {
  final Duration requestTimeout;
  final ConnectListener connectListener;
  final ReceivePushListener receivePushListener;

  CoreSocket({
    required this.requestTimeout,
    required this.connectListener,
    required this.receivePushListener,
  });

  BaseWebSocket? _webSocket;
  Map<String, Map<String, dynamic>>? _responseMap;

  void connect(String wsUrl) {
    _webSocket = BaseWebSocket(
      onData: _onData,
      onConnecting: () {
        connectListener.connecting();
      },
      onError: (code, error) {
        disconnect();
        connectListener.close(code, error);
      },
      onClose: (code, error) {
        disconnect();
        connectListener.close(code, error);
      },
    );
    _webSocket!.connect(Uri.decodeFull(
      wsUrl + Protocol.webSocket,
    ));
    _responseMap = {};
  }

  void disconnect() {
    _webSocket?.disconnect();
    _webSocket = null;
    _responseMap?.clear();
    _responseMap = null;
  }

  bool isConnect() {
    return _webSocket?.isConnect() ?? false;
  }

  void _onData(dynamic data) {
    if (data is String) {
      if (data == "connected") {
        connectListener.success();
      }
    } else if (data is List<int>) {
      PushBody body = PushBody.fromBuffer(data);
      if (body.event == PushEvent.PushMsgDataList) {
        receivePushListener.pushMsgDataList(
          MsgDataList.fromBuffer(body.data),
        );
      } else if (body.event == PushEvent.PushNoticeDataList) {
        receivePushListener.pushNoticeDataList(
          NoticeDataList.fromBuffer(body.data),
        );
      } else if (body.event == PushEvent.PushResponseBody) {
        ResponseBody response = ResponseBody.fromBuffer(body.data);
        if (response.method == Protocol.setCxnParams) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": SetCxnParamsResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.setUserParams) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": SetUserParamsResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.batchGetConvSeq) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": BatchGetConvSeqResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.batchGetMsgListByConvId) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": GetMsgListResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.getMsgById) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": GetMsgByIdResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.sendMsgList) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": SendMsgListResp.fromBuffer(response.data),
          };
        } else if (response.method == Protocol.ackNoticeData) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": AckNoticeDataResp.fromBuffer(response.data),
          };
        } else {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": response.data,
          };
        }
      }
    }
  }

  Future<SetCxnParamsResp?> setCxnParams({
    required String reqId,
    required SetCxnParamsReq req,
    SuccessCallback<SetCxnParamsResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.setCxnParams,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<SetCxnParamsResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<SetUserParamsResp?> setUserParams({
    required String reqId,
    required SetUserParamsReq req,
    SuccessCallback<SetUserParamsResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.setCxnParams,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<SetUserParamsResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<BatchGetConvSeqResp?> batchGetConvSeq({
    required String reqId,
    required BatchGetConvSeqReq req,
    SuccessCallback<BatchGetConvSeqResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.batchGetConvSeq,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<BatchGetConvSeqResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<GetMsgListResp?> batchGetMsgListByConvId({
    required String reqId,
    required BatchGetMsgListByConvIdReq req,
    SuccessCallback<GetMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.batchGetMsgListByConvId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<GetMsgListResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<GetMsgByIdResp?> getMsgById({
    required String reqId,
    required GetMsgByIdReq req,
    SuccessCallback<GetMsgByIdResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.getMsgById,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<GetMsgByIdResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<SendMsgListResp?> sendMsgList({
    required String reqId,
    required SendMsgListReq req,
    SuccessCallback<SendMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.sendMsgList,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<SendMsgListResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<AckNoticeDataResp?> ackNoticeData({
    required String reqId,
    required AckNoticeDataReq req,
    SuccessCallback<AckNoticeDataResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: Protocol.ackNoticeData,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<AckNoticeDataResp>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<List<int>?> customRequest({
    required String reqId,
    required String method,
    required List<int> bytes,
    SuccessCallback<List<int>>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      reqId: reqId,
      method: method,
      data: bytes,
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
    return _handleResponse<List<int>>(
      reqId: reqId,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  Future<T?> _handleResponse<T>({
    required String reqId,
    SuccessCallback<T>? onSuccess,
    ErrorCallback? onError,
  }) async {
    T? resp;
    bool toContinue = true;
    await Future.doWhile(() async {
      await Future.delayed(const Duration(milliseconds: 5));
      Map<String, dynamic>? body = _responseMap?[reqId];
      if (toContinue && body != null) {
        ResponseBody_Code code = body["code"];
        if (code == ResponseBody_Code.Success) {
          resp = body["resp"];
          if (onSuccess != null) onSuccess(resp as T);
        } else {
          if (onError != null) onError(code.value, code.name);
        }
        _responseMap?.remove(reqId);
        return false;
      }
      if (!toContinue) {
        if (onError != null) {
          onError(
            ResponseBody_Code.UnknownError.value,
            ResponseBody_Code.UnknownError.name,
          );
        }
      }
      return toContinue;
    }).timeout(
      requestTimeout,
      onTimeout: () {
        toContinue = false;
      },
    );
    return resp;
  }
}
