import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaizen_code/domain/repositories/chat_repository.dart';
import 'package:kaizen_code/features/chat/chat_navigator.dart';

import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatNavigator navigation;
  final ChatRepository chatRepository;
  ChatCubit(this.navigation, this.chatRepository) : super(ChatState.empty());

  onInit() {
    var chatUsers = chatRepository.getUsers();
    chatUsers = [
      ...chatUsers,
      ...chatUsers,
      ...chatUsers,
    ];
    emit(state.copyWith(chatUsers: chatUsers));
  }

  void goToChatRoom() {
    navigation.goToChatRoom();
  }
}
