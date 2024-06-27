import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/ui/screens/chat/chat_controller_impl.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/screens/chat/chat_view.dart';

@immutable
class ChatRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final String chatId;

  const ChatRoute({required this.chatId});

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final ChatControllerImplProvider provider = chatControllerImplProvider(
            backendService: ref.read(backendServiceAggregatorProvider),
            chatId: chatId,
          );
          final ChatControllerImpl controller = ref.read(provider.notifier);
          final ChatModel model = ref.watch(provider);

          return ChatView(model: model, controller: controller);
        },
      );
}
