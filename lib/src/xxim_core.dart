import 'package:xxim_core_flutter/src/connect/core_callback.dart';
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
    required Duration requestTimeout,
    required ConnectListener connectListener,
    required ReceivePushListener receivePushListener,
  }) {
    _coreSocket = CoreSocket(
      params: params,
      requestTimeout: requestTimeout,
      connectListener: connectListener,
      receivePushListener: receivePushListener,
    );
  }

  /// 连接
  void connect({
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

  /// 断连
  void disconnect() {
    _coreSocket?.disconnect();
  }

  /// 是否连接
  bool isConnect() {
    return _coreSocket?.isConnect() ?? false;
  }

  /// 批量获取会话序列
  Future<BatchGetConvSeqResp?>? batchGetConvSeq({
    required String reqId,
    required BatchGetConvSeqReq req,
    SuccessCallback<BatchGetConvSeqResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.batchGetConvSeq(
      reqId: reqId,
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 批量获取消息列表-会话ID
  Future<GetMsgListResp?>? batchGetMsgListByConvId({
    required String reqId,
    required BatchGetMsgListByConvIdReq req,
    SuccessCallback<GetMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.batchGetMsgListByConvId(
      reqId: reqId,
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 获取消息-消息ID
  Future<GetMsgByIdResp?>? getMsgById({
    required String reqId,
    required GetMsgByIdReq req,
    SuccessCallback<GetMsgByIdResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.getMsgById(
      reqId: reqId,
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 发送消息列表
  Future<SendMsgListResp?>? sendMsgList({
    required String reqId,
    required SendMsgListReq req,
    SuccessCallback<SendMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.sendMsgList(
      reqId: reqId,
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 确认消费通知
  Future<AckNoticeDataResp?>? ackNoticeData({
    required String reqId,
    required AckNoticeDataReq req,
    SuccessCallback<AckNoticeDataResp>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.ackNoticeData(
      reqId: reqId,
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 自定义请求
  Future<List<int>?>? customRequest({
    required String reqId,
    required List<int> bytes,
    SuccessCallback<List<int>>? onSuccess,
    ErrorCallback? onError,
  }) {
    return _coreSocket?.customRequest(
      reqId: reqId,
      bytes: bytes,
      onSuccess: onSuccess,
      onError: onError,
    );
  }
}
