# xxim-core-flutter

[![pub](https://img.shields.io/pub/v/xxim_core_flutter.svg?style=flat-square)](https://pub.dev/packages/xxim_core_flutter)
[![support](https://img.shields.io/badge/platform-android%20ios%20linux%20macos%20web%20windows-ff69b4.svg?style=flat-square)](https://pub.dev/packages/xxim_core_flutter)
[![stars](https://img.shields.io/github/stars/cherish-chat/xxim-core-flutter)](https://github.com/cherish-chat/xxim-core-flutter)
[![forks](https://img.shields.io/github/forks/cherish-chat/xxim-core-flutter)](https://github.com/cherish-chat/xxim-core-flutter)
[![commit](https://img.shields.io/github/commit-activity/m/cherish-chat/xxim-core-flutter)](https://github.com/cherish-chat/xxim-core-flutter)

支持Flutter6端开发。惺惺是一个100%开源社交平台，每个人都可以搭建自己的服务器，掌握数据的所有权。

## 初始化

     XXIMCore core = XXIMCore();
     core.init(
       params: Params(
         deviceModel: "",
         deviceId: "",
         osVersion: "",
         platform: "",
         appVersion: "",
         language: "",
       ),
       connectListener: ConnectListener(
         onConnecting: () {},
         onSuccess: () {},
         onClose: ({error}) {},
       ),
       receivePushListener: ReceivePushListener(
         onPushMsgDataList: (msgDataList) {},
         onFriendNotify: () {},
         onGroupNotify: () {},
         onSubscribeNotify: () {},
         onSocialNotify: () {},
       ),
     );

## 登录

     core.login(
       apiUrl: "",
       wsUrl: "",
       token: "",
       userId: "",
       networkUsed: "",
     );

## 登出

     core.logout();

## 是否登录

     core.isLogin();

## 修改语言

     core.setLanguage("");

## 批量获取会话序列

     BatchGetConvSeqReq batchGetConvSeqReq = BatchGetConvSeqReq(
       convIdList: [],
     );
     BatchGetConvSeqResp? batchGetConvSeqResp = await core.batchGetConvSeq(
       req: batchGetConvSeqReq,
       onSuccess: (data) {},
       onError: (code, {msg}) {},
     );

## 获取消息列表-会话ID

     GetMsgListByConvIdReq getMsgListByConvIdReq = GetMsgListByConvIdReq(
       convId: "",
       seqList: [],
       push: true ?? false,
     );
     GetMsgListResp? getMsgListResp = await core.getMsgListByConvId(
       req: getMsgListByConvIdReq,
       onSuccess: (data) {},
       onError: (code, {msg}) {},
     );

## 获取消息-消息ID

     GetMsgByIdReq getMsgByIdReq = GetMsgByIdReq(
       clientMsgId: "",
       serverMsgId: "",
       push: true ?? false,
     );
     GetMsgByIdResp? getMsgByIdResp = await core.getMsgById(
       req: getMsgByIdReq,
       onSuccess: (data) {},
       onError: (code, {msg}) {},
     );

## 发送消息列表

     SendMsgListReq req = SendMsgListReq(
       msgDataList: [
         MsgData(
           clientMsgId: "",
           clientTime: "",
           sender: "",
           senderInfo: "",
           senderConvInfo: "",
           receiver: MsgData_Receiver(
             userId: "",
             groupId: "",
           ),
           convId: "",
           atUsers: [],
           contentType: ContentType.TEXT,
           content: utf8.encode(""),
           options: MsgData_Options(
             offlinePush: true,
             storageForServer: true,
             storageForClient: true,
             unreadCount: true,
             needDecrypt: true,
             updateConv: true,
           ),
           offlinePush: MsgData_OfflinePush(
             title: "",
             content: "",
             payload: "",
           ),
           ext: utf8.encode(""),
         ),
       ],
       deliverAfter: 0,
     );
     bool? status = await core.sendMsgList(
       req: req,
       onSuccess: (data) {},
       onError: (code, {msg}) {},
     );
