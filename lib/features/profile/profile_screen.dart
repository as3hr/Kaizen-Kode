import 'package:flutter/material.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('NO UI GIVEN',
            style: Styles.boldStyle(fontSize: 20, color: AppColor.black1)),
      ),
    );
  }
}
