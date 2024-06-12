import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chats_controller_impl.g.dart';

@riverpod
class ChatsControllerImpl extends _$ChatsControllerImpl
    implements ChatsController {
  @override
  ChatsModel build() => const ChatsModel(
        chats: <SingleChat>[
          SingleChat(
            name: 'Alice',
            message: 'Hey, how are you?',
            profilePicturePath: 'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg',
          ),
          SingleChat(
            name: 'Bob',
            message: 'What\'s up?',
            profilePicturePath: 'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
          ),
          SingleChat(
            name: 'Charlie',
            message: 'Long time no see!',
          ),
        ],
      );

  @override
  void openChat(String id) {}

  @override
  void deleteChat() {}
}
