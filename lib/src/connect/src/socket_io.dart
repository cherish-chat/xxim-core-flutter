import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart';

class BaseWebSocket {
  final Function(dynamic data) onData;
  final Function() onConnecting;
  final Function(dynamic error) onError;
  final Function() onClose;

  BaseWebSocket({
    required this.onData,
    required this.onConnecting,
    required this.onError,
    required this.onClose,
  });

  IOWebSocketChannel? _wsChannel;

  void connect(String url) {
    try {
      onConnecting();
      _wsChannel = IOWebSocketChannel.connect(
        url,
        pingInterval: const Duration(seconds: 2),
      )..stream.listen(
          onData,
          onError: onError,
          onDone: onClose,
          cancelOnError: true,
        );
    } catch (_) {
      onClose();
    }
  }

  void disconnect() {
    _wsChannel?.sink.close(goingAway);
    _wsChannel = null;
  }

  bool isConnect() {
    return _wsChannel != null;
  }
}
