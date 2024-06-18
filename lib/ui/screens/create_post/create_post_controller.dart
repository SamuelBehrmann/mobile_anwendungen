import 'package:flutter/foundation.dart';

abstract interface class CreatePostController {
  void send({
    required String title,
    required String body,
    required VoidCallback onSend,
  });
  void goHome();
}
