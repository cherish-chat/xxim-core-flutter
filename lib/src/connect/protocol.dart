class Protocol {
  static const String batchGetConvSeq = "/v1/msg/batchGetConvSeq"; // 批量获取会话序列
  static const String batchGetMsgListByConvId =
      "/v1/msg/batchGetMsgListByConvId"; // 批量获取消息列表-会话ID
  static const String getMsgById = "/v1/msg/getMsgById"; // 获取消息-消息ID
  static const String sendMsgList = "/v1/msg/sendMsg"; // 发送消息列表
  static const String ackNoticeData = "/v1/notice/ackNoticeData"; // 确认消费通知
  static const String webSocket = "/ws"; // 建立连接
}
