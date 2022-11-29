import 'package:xxim_core_flutter/src/proto/core.pb.dart';

/// 接收推送监听
class ReceivePushListener {
  final Function(MsgDataList msgDataList)? onPushMsgDataList; // 消息推送
  final Function()? onFriendNotify; // 好友通知
  final Function()? onGroupNotify; // 群通知
  final Function()? onSubscribeNotify; // 订阅号
  final Function()? onSocialNotify; // 社交圈

  ReceivePushListener({
    this.onPushMsgDataList,
    this.onFriendNotify,
    this.onGroupNotify,
    this.onSubscribeNotify,
    this.onSocialNotify,
  });

  void pushMsgDataList(MsgDataList msgDataList) {
    if (onPushMsgDataList != null) onPushMsgDataList!(msgDataList);
  }

  void friendNotify() {
    if (onFriendNotify != null) onFriendNotify!();
  }

  void groupNotify() {
    if (onGroupNotify != null) onGroupNotify!();
  }

  void subscribeNotify() {
    if (onSubscribeNotify != null) onSubscribeNotify!();
  }

  void socialNotify() {
    if (onSocialNotify != null) onSocialNotify!();
  }
}
