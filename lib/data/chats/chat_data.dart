import 'package:kaizen_code/domain/entities/user.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';

class ChatData {
  final chatUsers = [
    User(
      image: AppImages.user1,
      message: 'Hello, I really like your post about...',
      name: 'Bruno Pham',
      time: '2 mins ago',
    ),
    User(
      image: AppImages.user2,
      message: 'Hello, I really like your post about...',
      name: 'Bruno Pham',
      time: '2 mins ago',
    ),
    User(
      image: AppImages.user3,
      message: 'Hello, I really like your post about...',
      name: 'Bruno Pham',
      time: '2 mins ago',
    ),
  ];
}
