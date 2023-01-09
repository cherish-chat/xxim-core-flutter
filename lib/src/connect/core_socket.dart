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
  final ConnectListener connectListener;
  final ReceivePushListener receivePushListener;

  CoreSocket({
    required this.params,
    required this.connectListener,
    required this.receivePushListener,
  });

  BaseWebSocket? _webSocket;

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
      onError: (error) {
        disconnect();
        connectListener.close(error.toString());
      },
      onClose: () {
        disconnect();
        connectListener.close(null);
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
  }

  void disconnect() {
    _webSocket?.disconnect();
    _webSocket = null;
  }

  bool isConnect() {
    return _webSocket?.isConnect() ?? false;
  }

  void batchGetConvSeq({
    required String reqId,
    required BatchGetConvSeqReq req,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.SyncConvSeq,
      reqId: reqId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
  }

  void batchGetMsgListByConvId({
    required String reqId,
    required BatchGetMsgListByConvIdReq req,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.SyncMsgList,
      reqId: reqId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
  }

  void getMsgById({
    required String reqId,
    required GetMsgByIdReq req,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.GetMsgById,
      reqId: reqId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
  }

  void sendMsgList({
    required String reqId,
    required SendMsgListReq req,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.SendMsgList,
      reqId: reqId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
  }

  void ackNoticeData({
    required String reqId,
    required AckNoticeDataReq req,
  }) {
    RequestBody request = RequestBody(
      event: ActiveEvent.AckNotice,
      reqId: reqId,
      data: req.writeToBuffer(),
    );
    _webSocket?.sendData(
      request.writeToBuffer(),
    );
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
          receivePushListener.batchGetConvSeq(
            response.reqId,
            BatchGetConvSeqResp.fromBuffer(response.data),
          );
        } else if (response.event == ActiveEvent.SyncMsgList) {
          receivePushListener.getMsgList(
            response.reqId,
            GetMsgListResp.fromBuffer(response.data),
          );
        } else if (response.event == ActiveEvent.GetMsgById) {
          receivePushListener.getMsgById(
            response.reqId,
            GetMsgByIdResp.fromBuffer(response.data),
          );
        } else if (response.event == ActiveEvent.SendMsgList) {
          receivePushListener.sendMsgList(
            response.reqId,
            SendMsgListResp.fromBuffer(response.data),
          );
        } else if (response.event == ActiveEvent.AckNotice) {
          receivePushListener.ackNoticeData(
            response.reqId,
            AckNoticeDataResp.fromBuffer(response.data),
          );
        }
      }
    }
  }
}
