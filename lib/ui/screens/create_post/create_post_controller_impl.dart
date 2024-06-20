import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/create_post_model.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post_controller_impl.g.dart';

@riverpod
class CreatePostControllerImpl extends _$CreatePostControllerImpl
    implements CreatePostController {
  @override
  CreatePostModel build({
    required CreatePostNavigationService navigationService,
    required CreatePostBackendService backendService,
  }) =>
      const CreatePostModel();

  @override
  void send({
    required String title,
    required String body,
    required VoidCallback onSend,
  }) {
    unawaited(
      backendService.send(title: title, body: body).then(
        (_) {
          // TODO: Show success message and spinner
          goHome();
          onSend();
        },
      ),
    );
  }

  @override
  void goHome() {
    navigationService.goHome();
  }
}
