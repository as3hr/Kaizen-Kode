import 'package:kaizen_code/domain/entities/user.dart';

class ChatState {
  List<User> chatUsers;
  ChatState({required this.chatUsers});

  copyWith({List<User>? chatUsers}) =>
      ChatState(chatUsers: chatUsers ?? this.chatUsers);

  factory ChatState.empty() => ChatState(chatUsers: []);
}
