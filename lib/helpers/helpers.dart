import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';
import 'package:flutter/material.dart';

Future<bool> showConfirmationDialog(String title, BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: AppColor.white,
            title: Text(title,
                style: Styles.mediumStyle(
                    fontSize: 14, color: AppColor.blackText)),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No',
                    style: Styles.mediumStyle(
                        fontSize: 14, color: AppColor.black1)),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes',
                    style: Styles.mediumStyle(
                      fontSize: 14,
                      color: AppColor.black1,
                    )),
              ),
            ],
          );
        },
      ) ??
      false;
}
