import 'package:flutter/material.dart';
import 'package:kaizen_code/features/chat/components/chat_room/chat_messages/image_message.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/widgets/cylindrical_container.dart';

import 'other_message.dart';
import 'my_message.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index % 3 == 0 && index != 0) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CylindricalContainer(
                  color: AppColor.blackText,
                  text: 'Today',
                  onChanged: () {},
                  borderColor: AppColor.blackText,
                  textColor: AppColor.white,
                ),
              ],
            );
          }
          if (index.isEven) {
            return const MyMessage();
          }
          if (index % 2 == 1 && index % 3 != 0) {
            return index % 4 == 1 ? const ImageMessage() : const OtherMessage();
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
