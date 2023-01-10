import 'package:xxim_core_flutter/src/proto/core.pb.dart';

/// 接收推送监听
class ReceivePushListener {
  final Function(MsgDataList msgDataList) onPushMsgDataList; // 推送消息列表
  final Function(NoticeDataList noticeDataList) onPushNoticeDataList; // 推送通知列表

  final Function(
    String reqId,
    ResponseBody_Code code,
    BatchGetConvSeqResp resp,
  ) onBatchGetConvSeq; // 批量获取会话序列
  final Function(
    String reqId,
    ResponseBody_Code code,
    GetMsgListResp resp,
  ) onGetMsgList; // 批量获取消息列表-会话ID
  final Function(
    String reqId,
    ResponseBody_Code code,
    GetMsgByIdResp resp,
  ) onGetMsgById; // 获取消息-消息ID
  final Function(
    String reqId,
    ResponseBody_Code code,
    SendMsgListResp resp,
  ) onSendMsgList; // 发送消息列表
  final Function(
    String reqId,
    ResponseBody_Code code,
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

  void batchGetConvSeq(
    String reqId,
    ResponseBody_Code code,
    BatchGetConvSeqResp resp,
  ) {
    onBatchGetConvSeq(reqId, code, resp);
  }

  void getMsgList(
    String reqId,
    ResponseBody_Code code,
    GetMsgListResp resp,
  ) {
    onGetMsgList(reqId, code, resp);
  }

  void getMsgById(
    String reqId,
    ResponseBody_Code code,
    GetMsgByIdResp resp,
  ) {
    onGetMsgById(reqId, code, resp);
  }

  void sendMsgList(
    String reqId,
    ResponseBody_Code code,
    SendMsgListResp resp,
  ) {
    onSendMsgList(reqId, code, resp);
  }

  void ackNoticeData(
    String reqId,
    ResponseBody_Code code,
    AckNoticeDataResp resp,
  ) {
    onAckNoticeData(reqId, code, resp);
  }
}
