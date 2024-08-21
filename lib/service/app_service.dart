import 'package:kaizen_code/data/chats/chat_data.dart';
import 'package:kaizen_code/data/posts/mock_post_repository.dart';
import 'package:kaizen_code/data/posts/posts_data.dart';
import 'package:kaizen_code/domain/repositories/post_repository.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_cubit.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar_navigator.dart';
import 'package:kaizen_code/features/chat/chat_cubit.dart';
import 'package:kaizen_code/features/chat/chat_navigator.dart';
import 'package:kaizen_code/features/create/create_cubit.dart';
import 'package:kaizen_code/features/create/create_navigator.dart';
import 'package:kaizen_code/features/home/home_cubit.dart';
import 'package:kaizen_code/navigation/app_navigation.dart';
import 'package:get_it/get_it.dart';

import '../data/chats/mock_chat_repository.dart';
import '../domain/repositories/chat_repository.dart';
import '../features/chat/components/chat_room/chat_room_cubit.dart';
import '../features/chat/components/chat_room/chat_room_navigator.dart';

class AppService {
  static Future<void> initialize(GetIt getIt) async {
    getIt.registerSingleton<AppNavigation>(AppNavigation());
    getIt.registerSingleton<PostsData>(PostsData());
    getIt.registerSingleton<PostRepository>(MockPostRepository(getIt()));
    getIt.registerSingleton<ChatData>(ChatData());
    getIt.registerSingleton<ChatRepository>(MockChatRepository(getIt()));
    getIt.registerSingleton<HomeCubit>(HomeCubit(getIt()));
    getIt.registerSingleton<ChatRoomNavigator>(ChatRoomNavigator(getIt()));
    getIt.registerSingleton<ChatRoomCubit>(ChatRoomCubit(getIt()));
    getIt.registerSingleton<ChatNavigator>(ChatNavigator(getIt()));
    getIt.registerSingleton<ChatCubit>(ChatCubit(getIt(), getIt()));
    getIt.registerSingleton<CreateNavigator>(CreateNavigator(getIt()));
    getIt.registerSingleton<CreateCubit>(CreateCubit(getIt(), getIt()));
    getIt.registerSingleton<BottomBarNavigator>(BottomBarNavigator(getIt()));
    getIt.registerSingleton<BottomBarCubit>(BottomBarCubit(getIt()));
  }
}
