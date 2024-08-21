import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/chat/components/chat_room/chat_field.dart';
import 'package:kaizen_code/features/chat/components/chat_room/chat_room_cubit.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';

import 'chat_messages/chat_messages.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.cubit});
  final ChatRoomCubit cubit;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  void initState() {
    super.initState();
    widget.cubit.navigation.context = context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.cubit.navigation.pop();
                    },
                    child: Image.asset(AppImages.backArrow),
                  ),
                  const Text('BRUNO PHAM'),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(AppImages.setting),
                  ),
                ],
              ),
            ),
            const ChatMessages(),
            ChatField(cubit: widget.cubit)
          ],
        ),
      ),
    );
  }
}
