import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';
import 'package:flutter/material.dart';

Future<void> showToast(String message, BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pop(true);
      });

      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    },
  );
}

Future<bool> showConfirmationDialog(String title, BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No',
                    style: Styles.mediumStyle(
                        fontSize: 14, color: AppColor.white)),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes',
                    style: Styles.mediumStyle(
                        fontSize: 14, color: AppColor.white)),
              ),
            ],
          );
        },
      ) ??
      false;
}

//date functions
String formatDate(DateTime date) {
  DateTime now = DateTime.now();
  Duration difference = now.difference(date);

  if (difference.inMinutes <= 1) {
    return 'now';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inHours < 24) {
    if (difference.inHours == 1) {
      return '1 hour ago';
    }
    return '${difference.inHours} hours ago';
  } else if (difference.inDays < 30) {
    if (difference.inDays == 1) {
      return 'yesterday';
    }
    return '${difference.inDays} days ago';
  } else if (difference.inDays < 365) {
    int months = (difference.inDays / 30).floor();
    if (months == 1) {
      return 'last month';
    }
    return '$months months ago';
  } else {
    int years = (difference.inDays / 365).floor();
    if (years == 1) {
      return 'last year';
    }
    return '$years years ago';
  }
}
