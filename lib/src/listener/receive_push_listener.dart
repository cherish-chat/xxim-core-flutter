import 'package:xxim_core_flutter/src/proto/core.pb.dart';

/// 接收推送监听
class ReceivePushListener {
  final Function(MsgDataList msgDataList) onPushMsgDataList; // 推送消息列表
  final Function(NoticeDataList noticeDataList) onPushNoticeDataList; // 推送通知列表

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
