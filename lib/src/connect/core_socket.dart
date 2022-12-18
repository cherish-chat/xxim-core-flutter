import 'package:xxim_core_flutter/src/connect/core_http.dart';
import 'package:xxim_core_flutter/src/connect/protocol.dart';
import 'package:xxim_core_flutter/src/listener/connect_listener.dart';
import 'package:xxim_core_flutter/src/listener/receive_push_listener.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';
import 'src/socket_none.dart'
    if (dart.library.html) 'src/socket_html.dart'
    if (dart.library.io) 'src/socket_io.dart';

class CoreSocket {
  final CoreHttp coreHttp;
  final ConnectListener? connectListener;
  final ReceivePushListener? receivePushListener;

  CoreSocket({
    required this.coreHttp,
    this.connectListener,
    this.receivePushListener,
  });

  BaseWebSocket? _webSocket;

  void connect({
    required String wsUrl,
    required String token,
    required String userId,
    required String networkUsed,
  }) async {
    _webSocket = BaseWebSocket(
      onData: _onData,
      onConnecting: () {
        connectListener?.connecting();
      },
      onError: (error) {
        coreHttp.disconnect();
        disconnect();
        connectListener?.close(error: error.toString());
      },
      onClose: () {
        coreHttp.disconnect();
        disconnect();
        connectListener?.close();
      },
    );
    _webSocket!.connect(Uri.decodeFull(
      Uri(
        path: wsUrl + Protocol.webSocket,
        queryParameters: {
          "token": token,
          "userId": userId,
          "deviceId": coreHttp.params.deviceId,
          "platform": coreHttp.params.platform,
          "networkUsed": networkUsed,
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

  void _onData(dynamic data) {
    if (data is String) {
      if (data == "connected") {
        connectListener?.success();
      }
    } else if (data is List<int>) {
      PushBody body = PushBody.fromBuffer(data);
      if (body.event == PushEvent.PushMsgDataList) {
        receivePushListener?.pushMsgDataList(
          MsgDataList.fromBuffer(body.data),
        );
      } else if (body.event == PushEvent.PushNoticeDataList) {
        receivePushListener?.pushNoticeDataList(
          NoticeDataList.fromBuffer(body.data),
        );
      }
    }
  }
}
