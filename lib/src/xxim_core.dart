import 'package:xxim_core_flutter/src/connect/core_socket.dart';
import 'package:xxim_core_flutter/src/connect/params.dart';
import 'package:xxim_core_flutter/src/listener/connect_listener.dart';
import 'package:xxim_core_flutter/src/listener/receive_push_listener.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';

class XXIMCore {
  CoreSocket? _coreSocket;

  /// 初始化
  void init({
    required Params params,
    required ConnectListener connectListener,
    required ReceivePushListener receivePushListener,
  }) {
    _coreSocket = CoreSocket(
      params: params,
      connectListener: connectListener,
      receivePushListener: receivePushListener,
    );
  }

  /// 登录
  void login({
    required String wsUrl,
    required String token,
    required String userId,
    required String networkUsed,
  }) {
    _coreSocket?.connect(
      wsUrl: wsUrl,
      token: token,
      userId: userId,
      networkUsed: networkUsed,
    );
  }

  /// 登出
  void logout() {
    _coreSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    return _coreSocket?.isConnect() ?? false;
  }

  /// 批量获取会话序列
  void batchGetConvSeq({
    required String reqId,
    required BatchGetConvSeqReq req,
  }) {
    _coreSocket?.batchGetConvSeq(
      reqId: reqId,
      req: req,
    );
  }

  /// 批量获取消息列表-会话ID
  void batchGetMsgListByConvId({
    required String reqId,
    required BatchGetMsgListByConvIdReq req,
  }) {
    _coreSocket?.batchGetMsgListByConvId(
      reqId: reqId,
      req: req,
    );
  }

  /// 获取消息-消息ID
  void getMsgById({
    required String reqId,
    required GetMsgByIdReq req,
  }) {
    _coreSocket?.getMsgById(
      reqId: reqId,
      req: req,
    );
  }

  /// 发送消息列表
  void sendMsgList({
    required String reqId,
    required SendMsgListReq req,
  }) {
    _coreSocket?.sendMsgList(
      reqId: reqId,
      req: req,
    );
  }

  /// 确认消费通知
  void ackNoticeData({
    required String reqId,
    required AckNoticeDataReq req,
  }) {
    _coreSocket?.ackNoticeData(
      reqId: reqId,
      req: req,
    );
  }
}
