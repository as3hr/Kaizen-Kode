import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

class ImageMessage extends StatelessWidget {
  const ImageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                constraints: BoxConstraints(
                  maxWidth: 0.65.sw,
                ),
                decoration: const BoxDecoration(
                    color: AppColor.black1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.elliptical(5, -10),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )),
                child: Column(
                  children: [
                    // Padding(
                    //     padding: const EdgeInsets.all(5),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(10),
                    //       child: CachedNetworkImage(
                    //         imageUrl: '',
                    //         imageBuilder: (context, imageProvider) => Container(
                    //           constraints: const BoxConstraints(
                    //             maxHeight: 120,
                    //           ),
                    //           decoration: BoxDecoration(
                    //             image: DecorationImage(
                    //               image: imageProvider,
                    //               fit: BoxFit.fitWidth,
                    //             ),
                    //           ),
                    //         ),
                    //         placeholder: (context, url) => const ShimmerEffect(),
                    //         errorWidget: (context, url, error) =>
                    //             const Icon(Icons.error),
                    //       ),
                    //     )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            'Image message',
                            style: Styles.mediumStyle(
                                fontSize: 14,
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                        )),
                  ],
                ),
              ),
              5.verticalSpace,
              Row(
                children: [
                  10.horizontalSpace,
                  const Text('1 hour ago'),
                  5.horizontalSpace,
                  const Icon(
                    Icons.check,
                    size: 15,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
