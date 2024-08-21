import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:kaizen_code/features/bottom_bar/bottom_bar.dart';
import 'package:kaizen_code/helpers/extensions.dart';

import 'helpers/styles/app_theme.dart';
import 'navigation/route_generator.dart';
import 'service/app_service.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  await AppService.initialize(getIt);
  runApp(const KaizenCode());
}

class KaizenCode extends StatelessWidget {
  const KaizenCode({super.key});
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: false,
        builder: (context) {
          return ScreenUtilInit(
              designSize: Size(context.screenWidth, context.screenHeight),
              builder: (context, _) {
                SystemChrome.setSystemUIOverlayStyle(
                  SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    systemNavigationBarColor:
                        Theme.of(context).colorScheme.surface,
                  ),
                );
                return MaterialApp(
                  theme: AppTheme.theme(),
                  themeMode: ThemeMode.dark,
                  debugShowCheckedModeBanner: false,
                  home: BottomBar(cubit: getIt()),
                  onGenerateRoute: generateRoute,
                );
              });
        });
  }
}
