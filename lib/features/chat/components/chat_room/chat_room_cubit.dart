import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaizen_code/features/chat/components/chat_room/chat_room_state.dart';

import '../../../../helpers/styles/app_colors.dart';
import '../../../../helpers/styles/styles.dart';
import 'chat_room_navigator.dart';

class ChatRoomCubit extends Cubit<ChatRoomState> {
  final ChatRoomNavigator navigation;
  ChatRoomCubit(this.navigation) : super(ChatRoomState());

  void pop() {
    navigation.pop();
  }

  final picker = ImagePicker();

  Future showOptions(BuildContext context) async {
    showCupertinoModalPopup(
      barrierColor: AppColor.transparent,
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              'Photo Gallery',
              style: Styles.semiBoldStyle(fontSize: 15, color: AppColor.white),
            ),
            onPressed: () async {
              Navigator.of(context).pop();
              await getImage(ImageSource.gallery);
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              'Camera',
              style: Styles.semiBoldStyle(fontSize: 15, color: AppColor.white),
            ),
            onPressed: () async {
              Navigator.of(context).pop();
              await getImage(ImageSource.camera);
            },
          ),
        ],
      ),
    );
  }

  Future getImage(ImageSource source) async {
    final file = await picker.pickImage(source: source);
    if (file != null) {}
  }

  void toggleImageSelection({String? image}) {
    if (image != null) {
    } else {}
  }
}
