import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../../../../helpers/styles/app_colors.dart';
import '../../../../helpers/styles/app_images.dart';
import 'chat_room_cubit.dart';

class ChatField extends StatelessWidget {
  const ChatField({super.key, required this.cubit});
  final ChatRoomCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 1.sw,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () async {
                    await cubit.showOptions(context);
                  },
                  child: Image.asset(AppImages.chatGallery),
                ),
              ),
              Expanded(
                  child: TextFormField(
                      maxLines: 3,
                      minLines: 1,
                      cursorColor: Theme.of(context).colorScheme.onSecondary,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        hintText: 'Type Something',
                        hintStyle: Styles.mediumStyle(
                            fontSize: 14, color: AppColor.black1),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: AppColor.transparent,
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: AppColor.transparent,
                        )),
                      ))),
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(AppImages.chatSend),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
