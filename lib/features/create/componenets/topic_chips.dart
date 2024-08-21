import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/create/create_state.dart';

import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/widgets/cylindrical_container.dart';
import '../create_cubit.dart';

class TopicChips extends StatefulWidget {
  const TopicChips({super.key, required this.topics, required this.cubit});
  final void Function(List<String>) topics;
  final CreateCubit cubit;

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCubit, CreateState>(
        bloc: widget.cubit,
        builder: (context, state) {
          return SizedBox(
            height: 0.06.sh,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: topics.map((topic) {
                  final isSelected = state.selectedTopic.contains(topic);
                  return CylindricalContainer(
                    color: isSelected ? AppColor.green : AppColor.white,
                    text: topic,
                    onChanged: () {
                      widget.cubit.toggleTopic(topic, isSelected);
                      widget.topics.call(state.selectedTopic);
                    },
                    textColor: isSelected ? AppColor.white : AppColor.blackText,
                    borderColor:
                        isSelected ? AppColor.green : AppColor.blackText,
                  );
                }).toList()),
          );
        });
  }
}
