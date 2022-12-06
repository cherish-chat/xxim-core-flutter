import 'package:xxim_core_flutter/src/proto/core.pb.dart';

/// 接收推送监听
class ReceivePushListener {
  final Function(MsgDataList msgDataList) onPushMsgDataList; // 消息推送
  final Function(NoticeDataList noticeDataList) onPushNoticeDataList; // 通知推送

  ReceivePushListener({
    required this.onPushMsgDataList,
    required this.onPushNoticeDataList,
  });

  void pushMsgDataList(MsgDataList msgDataList) {
    onPushMsgDataList(msgDataList);
  }

  void pushNoticeDataList(NoticeDataList noticeDataList) {
    onPushNoticeDataList(noticeDataList);
  }
}
