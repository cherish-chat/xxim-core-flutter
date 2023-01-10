import 'package:xxim_core_flutter/src/connect/core_callback.dart';
import 'package:xxim_core_flutter/src/connect/params.dart';
import 'package:xxim_core_flutter/src/connect/protocol.dart';
import 'package:xxim_core_flutter/src/listener/connect_listener.dart';
import 'package:xxim_core_flutter/src/listener/receive_push_listener.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';
import 'src/socket_none.dart'
    if (dart.library.html) 'src/socket_html.dart'
    if (dart.library.io) 'src/socket_io.dart';

class CoreSocket {
  final Params params;
  final Duration requestTimeout;
  final ConnectListener connectListener;
  final ReceivePushListener receivePushListener;

  CoreSocket({
    required this.params,
    required this.requestTimeout,
    required this.connectListener,
    required this.receivePushListener,
  });

  BaseWebSocket? _webSocket;
  Map<String, Map<String, dynamic>>? _responseMap;

  void connect({
    required String wsUrl,
    required String token,
    required String userId,
    required String networkUsed,
  }) {
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
      Uri(
        path: wsUrl + Protocol.webSocket,
        queryParameters: {
          "token": token,
          "userId": userId,
          "networkUsed": networkUsed,
          "deviceId": params.deviceId,
          "platform": params.platform,
          "deviceModel": params.deviceModel,
          "osVersion": params.osVersion,
          "appVersion": params.appVersion,
          "language": params.language,
        },
      ).toString(),
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
        if (response.event == ActiveEvent.SyncConvSeq) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": BatchGetConvSeqResp.fromBuffer(response.data),
          };
        } else if (response.event == ActiveEvent.SyncMsgList) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": GetMsgListResp.fromBuffer(response.data),
          };
        } else if (response.event == ActiveEvent.GetMsgById) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": GetMsgByIdResp.fromBuffer(response.data),
          };
        } else if (response.event == ActiveEvent.SendMsgList) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": SendMsgListResp.fromBuffer(response.data),
          };
        } else if (response.event == ActiveEvent.AckNotice) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": AckNoticeDataResp.fromBuffer(response.data),
          };
        } else if (response.event == ActiveEvent.CustomRequest) {
          _responseMap?[response.reqId] = {
            "code": response.code,
            "resp": response.data,
          };
        }
      }
    }
  }

  Future<BatchGetConvSeqResp?> batchGetConvSeq({
    required String reqId,
    required BatchGetConvSeqReq req,
    SuccessCallback<BatchGetConvSeqResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.SyncConvSeq,
      reqId: reqId,
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
      event: ActiveEvent.SyncMsgList,
      reqId: reqId,
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
      event: ActiveEvent.GetMsgById,
      reqId: reqId,
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
      event: ActiveEvent.SendMsgList,
      reqId: reqId,
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
      event: ActiveEvent.AckNotice,
      reqId: reqId,
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
    required List<int> bytes,
    SuccessCallback<List<int>>? onSuccess,
    ErrorCallback? onError,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.CustomRequest,
      reqId: reqId,
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
      if (body != null) {
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
