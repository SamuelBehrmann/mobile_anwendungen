import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/create_post_model.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post_controller_impl.g.dart';

@riverpod
class CreatePostControllerImpl extends _$CreatePostControllerImpl
    implements CreatePostController {
  @override
  CreatePostModel build({
    required CreatePostNavigationService navigationService,
  }) =>
      const CreatePostModel();

  @override
  void send({required String title, required String body}) {
    print("controller title: " + title);
    print("controller body: " + body);
    goHome();
  }

  @override
  void goHome() {
    navigationService.goHome();
  }
}
