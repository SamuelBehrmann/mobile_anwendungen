import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:medi_support/ui/screens/home/home_controller.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  CreatePostNavigationService,
  CreatePostBackendService,
  CreatePostController,
  PostController,
  HomeController,
  ChatsController,
  ChatController,
  ProfileController,
  SearchController,
])
class Mocks {}
