import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/services/chats_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chats_controller_impl.g.dart';

@riverpod
class ChatsControllerImpl extends _$ChatsControllerImpl
    implements ChatsController {
  final List<ChatsModelChat> _chats = <ChatsModelChat>[
    const ChatsModelChat(
      name: 'Alice',
      message: 'Hey, how are you?',
      profilePicturePath:
          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg',
    ),
    const ChatsModelChat(
      name: 'Bob',
      message: 'What\'s up?',
      profilePicturePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BkMQEKHWILXy8SzbX5aocWP6YWv0mZnSDA&s',
    ),
    const ChatsModelChat(
      name: 'Charlie',
      message: 'Long time no see!',
    ),
    const ChatsModelChat(
      name: 'Diana',
      message: 'Are you coming to the party?',
      profilePicturePath:
          'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
    ),
    const ChatsModelChat(
      name: 'Ethan',
      message: 'Did you finish the project?',
    ),
    const ChatsModelChat(
      name: 'Fiona',
      message: 'Let\'s meet for coffee tomorrow.',
      profilePicturePath:
          'https://preview.redd.it/the-best-poses-for-girls-profile-pictures-v0-k3kxvh4czthb1.jpg?width=911&format=pjpg&auto=webp&s=5928c38dc54f0dbe37fc68519b2f23f2507e6d15',
    ),
    const ChatsModelChat(
      name: 'George',
      message: 'I\'ll call you later.',
    ),
    const ChatsModelChat(
      name: 'Hannah',
      message: 'Happy Birthday!',
      profilePicturePath:
          'https://w0.peakpx.com/wallpaper/357/667/HD-wallpaper-ghost-profile-thumbnail.jpg',
    ),
    const ChatsModelChat(
      name: 'Ian',
      message: 'Can you help me with my homework?',
    ),
    const ChatsModelChat(
      name: 'Julia',
      message: 'I loved the gift, thank you!',
      profilePicturePath:
          'https://mrwallpaper.com/images/hd/cool-profile-picture-minion-13pu7815v42uvrsg.jpg',
    ),
  ];

  @override
  ChatsModel build({
    required ChatsNavigationService navigationService,
  }) =>
      ChatsModel(
        chats: _chats,
      );

  @override
  void openChat(String id) {
    navigationService.openChat(chatId: id);
  }

  @override
  void deleteChat() {}

  @override
  void filterChats(String query) {
    List<ChatsModelChat> currentChats = state.chats;
    if (query.isNotEmpty) {
      currentChats = _chats
          .where(
            (ChatsModelChat chat) =>
                chat.name.toLowerCase().contains(query.toLowerCase()) ||
                chat.message.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }
    state = state.copyWith(filteredChats: currentChats);
  }
}
