import 'package:kaizen_code/domain/entities/user.dart';
import 'package:kaizen_code/domain/repositories/chat_repository.dart';

import 'chat_data.dart';

class MockChatRepository implements ChatRepository {
  final ChatData chatData;
  MockChatRepository(this.chatData);
  @override
  List<User> getUsers() {
    return chatData.chatUsers;
  }
}
