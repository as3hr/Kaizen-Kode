import 'package:flutter/material.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import '../../../helpers/styles/app_images.dart';

class TopicBottomSheet extends StatefulWidget {
  const TopicBottomSheet({super.key});

  @override
  State<TopicBottomSheet> createState() => _TopicBottomSheetState();
}

class _TopicBottomSheetState extends State<TopicBottomSheet> {
  final topics = [
    'Home',
    'Search',
    'Settings',
    'About',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 1.0,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        color: currentIndex == index
                            ? AppColor.green
                            : AppColor.white,
                        child: ListTile(
                          leading: Image.asset(AppImages.bottomBarTopic,
                              color: currentIndex == index
                                  ? AppColor.white
                                  : AppColor.lightBlack),
                          title: Text(
                            topics[index],
                            style: Styles.mediumStyle(
                              fontSize: 12,
                              color: currentIndex == index
                                  ? AppColor.white
                                  : AppColor.lightBlack,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
