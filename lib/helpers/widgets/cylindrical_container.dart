import 'package:flutter/material.dart';
import 'package:kaizen_code/helpers/styles/app_colors.dart';
import 'package:kaizen_code/helpers/styles/styles.dart';

class CylindricalContainer extends StatelessWidget {
  const CylindricalContainer({
    super.key,
    required this.color,
    required this.text,
    required this.onChanged,
    this.borderColor,
    required this.textColor,
  });
  final Color color;
  final Color? borderColor;
  final Color textColor;
  final String text;
  final void Function() onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          onChanged.call();
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: borderColor ?? AppColor.green,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: Styles.mediumStyle(fontSize: 12, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
