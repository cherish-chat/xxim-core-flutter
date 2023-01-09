import 'package:xxim_core_flutter/src/proto/core.pb.dart';

/// 接收推送监听
class ReceivePushListener {
  final Function(
    MsgDataList msgDataList,
  ) onPushMsgDataList; // 消息列表推送
  final Function(
    NoticeDataList noticeDataList,
  ) onPushNoticeDataList; // 通知列表推送

  final Function(
    String reqId,
    BatchGetConvSeqResp resp,
  ) onBatchGetConvSeq; // 批量获取会话序列
  final Function(
    String reqId,
    GetMsgListResp resp,
  ) onGetMsgList; // 批量获取消息列表-会话ID
  final Function(
    String reqId,
    GetMsgByIdResp resp,
  ) onGetMsgById; // 获取消息-消息ID
  final Function(
    String reqId,
    SendMsgListResp resp,
  ) onSendMsgList; // 发送消息列表
  final Function(
    String reqId,
    AckNoticeDataResp resp,
  ) onAckNoticeData; // 确认消费通知

  ReceivePushListener({
    required this.onPushMsgDataList,
    required this.onPushNoticeDataList,
    required this.onBatchGetConvSeq,
    required this.onGetMsgList,
    required this.onGetMsgById,
    required this.onSendMsgList,
    required this.onAckNoticeData,
  });

  void pushMsgDataList(MsgDataList msgDataList) {
    onPushMsgDataList(msgDataList);
  }

  void pushNoticeDataList(NoticeDataList noticeDataList) {
    onPushNoticeDataList(noticeDataList);
  }

  void batchGetConvSeq(String reqId, BatchGetConvSeqResp resp) {
    onBatchGetConvSeq(reqId, resp);
  }

  void getMsgList(String reqId, GetMsgListResp resp) {
    onGetMsgList(reqId, resp);
  }

  void getMsgById(String reqId, GetMsgByIdResp resp) {
    onGetMsgById(reqId, resp);
  }

  void sendMsgList(String reqId, SendMsgListResp resp) {
    onSendMsgList(reqId, resp);
  }

  void ackNoticeData(String reqId, AckNoticeDataResp resp) {
    onAckNoticeData(reqId, resp);
  }
}
