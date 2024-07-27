import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:medi_support/ui/screens/chat/services/chat_navigation_service.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_navigation_service.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:medi_support/ui/screens/home/home_controller.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';
import 'package:medi_support/ui/screens/home/services/home_navigation_service.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_navigation_service.dart';
import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';
import 'package:medi_support/ui/screens/profile/services/profile_navigation_service.dart';
import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:medi_support/ui/screens/search/services/search_navigation_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  CreatePostNavigationService,
  CreatePostBackendService,
  CreatePostController,
  PostController,
  PostNavigationService,
  PostBackendService,
  HomeController,
  HomeBackendService,
  HomeNavigationService,
  ChatsController,
  ProfileController,
  ProfileNavigationService,
  ProfileBackendService,
  SearchController,
  SearchNavigationService,
  SearchBackendService,
  ChatsBackendService,
  ChatsNavigationService,
  ChatController,
  ChatNavigationService,
  ChatBackendService,
])
class Mocks {}
