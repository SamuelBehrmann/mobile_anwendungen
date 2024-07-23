import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  CreatePostNavigationService,
  CreatePostBackendService,
  CreatePostController,
  PostController,
])
class Mocks {}
