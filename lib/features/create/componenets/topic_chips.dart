import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/widgets/cylindrical_container.dart';

class TopicChips extends StatefulWidget {
  const TopicChips({super.key, required this.topics});
  final void Function(List<String>) topics;

  @override
  State<TopicChips> createState() => _TopicChipsState();
}

class _TopicChipsState extends State<TopicChips> {
  final topics = [
    'Tech',
    'Travel',
    'Health',
    'Economy',
    'Business',
    'Politics',
    'Sports',
  ];

  final selectedTopic = [
    'Tech',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.06.sh,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: topics.map((topic) {
            final isSelected = selectedTopic.contains(topic);
            return CylindricalContainer(
              color: isSelected ? AppColor.green : AppColor.white,
              text: topic,
              onChanged: () {
                if (isSelected) {
                  selectedTopic.remove(topic);
                } else {
                  selectedTopic.add(topic);
                }
                setState(() {});
                widget.topics.call(selectedTopic);
              },
              textColor: isSelected ? AppColor.white : AppColor.blackText,
              borderColor: isSelected ? AppColor.green : AppColor.blackText,
            );
          }).toList()),
    );
  }
}
