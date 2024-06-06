import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/ui/screens/chat/chat_view.dart';

@immutable
class ChatRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final String chatId;

  const ChatRoute({required this.chatId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ChatView(
        chatId: chatId,
      );
}
