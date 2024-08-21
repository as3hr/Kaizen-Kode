import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/features/create/componenets/create_footer.dart';
import 'package:kaizen_code/features/create/componenets/create_header.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

import 'create_cubit.dart';
import 'create_state.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key, required this.cubit});
  final CreateCubit cubit;

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  late CreateCubit createScreenCubit;
  @override
  void initState() {
    super.initState();
    createScreenCubit = widget.cubit;
    createScreenCubit.navigation.context = context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CreateCubit, CreateState>(
            bloc: createScreenCubit,
            builder: (context, state) {
              return Column(
                children: [
                  10.verticalSpace,
                  CreateHeader(
                    cubit: createScreenCubit,
                    onChanged: (postType) {
                      createScreenCubit.changePostType(postType);
                    },
                  ),
                  SizedBox(
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (val) {
                        state.post.content.text = val;
                      },
                      maxLines: null,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.transparent),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.transparent),
                          ),
                          hintText: 'Type Something',
                          hintStyle: Styles.semiMediumStyle(
                              fontSize: 14, color: AppColor.black1)),
                    ),
                  ),
                  const Spacer(),
                  CreateFooter(cubit: createScreenCubit)
                ],
              );
            }),
      ),
    );
  }
}
