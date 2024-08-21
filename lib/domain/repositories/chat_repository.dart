import '../entities/user.dart';

abstract class ChatRepository {
  List<User> getUsers();
}
