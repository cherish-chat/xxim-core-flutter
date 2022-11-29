/// 连接状态监听
class ConnectListener {
  final Function()? onConnecting; // 连接中
  final Function()? onSuccess; // 连接成功
  final Function({String? error})? onClose; // 连接关闭

  ConnectListener({
    this.onConnecting,
    this.onSuccess,
    this.onClose,
  });

  void connecting() {
    if (onConnecting != null) onConnecting!();
  }

  void success() {
    if (onSuccess != null) onSuccess!();
  }

  void close({String? error}) {
    if (onClose != null) onClose!(error: error);
  }
}
