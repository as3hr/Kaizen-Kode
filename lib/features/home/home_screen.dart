import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/home/componenets/feed.dart';
import 'package:kaizen_code/features/home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/app_images.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.cubit});
  final HomeCubit cubit;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late HomeCubit homeCubit;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    homeCubit = widget.cubit;
    homeCubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          30.verticalSpace,
          Row(
            children: [
              10.horizontalSpace,
              Text(
                'LOGO',
                style: Styles.boldStyle(fontSize: 20, color: AppColor.black1),
              ),
              5.horizontalSpace,
              Image.asset(
                AppImages.logoVerify,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppImages.bell,
                ),
              ),
              10.horizontalSpace,
            ],
          ),
          30.verticalSpace,
          TabBar(
              dividerColor: AppColor.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.all(8),
              indicatorColor: AppColor.green,
              labelStyle: Styles.boldStyle(fontSize: 14, color: AppColor.green),
              controller: tabController,
              tabs: const [
                Center(child: Text('Public Feed')),
                Center(
                  child: Text('Business Feed'),
                )
              ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Feed(cubit: homeCubit),
              Feed(cubit: homeCubit),
            ]),
          ),
        ],
      )),
    );
  }
}
