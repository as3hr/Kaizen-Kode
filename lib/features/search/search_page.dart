import 'package:flutter/material.dart';

import '../../helpers/styles/app_colors.dart';
import '../../helpers/styles/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
