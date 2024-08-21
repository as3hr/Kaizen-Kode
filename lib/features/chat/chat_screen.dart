import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';

import 'chat_cubit.dart';
import 'chat_state.dart';
import 'components/chat_tile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.cubit});
  final ChatCubit cubit;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late ChatCubit chatScreenCubit;
  @override
  void initState() {
    super.initState();
    chatScreenCubit = widget.cubit;
    chatScreenCubit.navigation.context = context;
    chatScreenCubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ChatCubit, ChatState>(
            bloc: chatScreenCubit,
            builder: (context, state) {
              return Column(
                children: [
                  const Row(
                    children: [
                      Text('Message'),
                      Spacer(),
                      Icon(Icons.add, color: AppColor.black1),
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: state.chatUsers.length,
                          itemBuilder: (context, index) {
                            final user = state.chatUsers[index];
                            return GestureDetector(
                                onTap: () {
                                  chatScreenCubit.goToChatRoom();
                                },
                                child: ChatTile(user: user));
                          })),
                ],
              );
            }),
      ),
    );
  }
}
