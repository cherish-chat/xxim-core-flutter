import 'package:xxim_core_flutter/src/connect/core_http.dart';
import 'package:xxim_core_flutter/src/connect/core_socket.dart';
import 'package:xxim_core_flutter/src/connect/params.dart';
import 'package:xxim_core_flutter/src/listener/connect_listener.dart';
import 'package:xxim_core_flutter/src/listener/receive_push_listener.dart';
import 'package:xxim_core_flutter/src/proto/core.pb.dart';

class XXIMCore {
  CoreHttp? _coreHttp;
  CoreSocket? _coreSocket;

  /// 初始化
  void init({
    required Params params,
    ConnectListener? connectListener,
    ReceivePushListener? receivePushListener,
  }) {
    _coreHttp = CoreHttp(params);
    _coreSocket = CoreSocket(
      coreHttp: _coreHttp!,
      connectListener: connectListener,
      receivePushListener: receivePushListener,
    );
  }

  /// 登录
  void login({
    required String apiUrl,
    required String wsUrl,
    required String token,
    required String userId,
    required String networkUsed,
  }) {
    _coreHttp?.connect(
      apiUrl: apiUrl,
      token: token,
      userId: userId,
    );
    _coreSocket?.connect(
      wsUrl: wsUrl,
      token: token,
      userId: userId,
      networkUsed: networkUsed,
    );
  }

  /// 登出
  void logout() {
    _coreHttp?.disconnect();
    _coreSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    bool http = _coreHttp?.isConnect() ?? false;
    bool socket = _coreSocket?.isConnect() ?? false;
    return http && socket;
  }

  /// 修改语言
  void setLanguage(String language) {
    _coreHttp?.setLanguage(language);
  }

  /// 批量获取会话序列
  Future<BatchGetConvSeqResp?> batchGetConvSeq({
    required BatchGetConvSeqReq req,
    SuccessCallback<BatchGetConvSeqResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    return await _coreHttp?.batchGetConvSeq(
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 批量获取消息列表-会话ID
  Future<GetMsgListResp?> batchGetMsgListByConvId({
    required BatchGetMsgListByConvIdReq req,
    SuccessCallback<GetMsgListResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    return await _coreHttp?.batchGetMsgListByConvId(
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 获取消息-消息ID
  Future<GetMsgByIdResp?> getMsgById({
    required GetMsgByIdReq req,
    SuccessCallback<GetMsgByIdResp>? onSuccess,
    ErrorCallback? onError,
  }) async {
    return await _coreHttp?.getMsgById(
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 发送消息列表
  Future<bool?> sendMsgList({
    required SendMsgListReq req,
    SuccessCallback<bool>? onSuccess,
    ErrorCallback? onError,
  }) async {
    return await _coreHttp?.sendMsgList(
      req: req,
      onSuccess: onSuccess,
      onError: onError,
    );
  }
}
