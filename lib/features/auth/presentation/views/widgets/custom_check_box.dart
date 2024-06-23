import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? boolValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: boolValue,
      onChanged: (value) {
        setState(() {
          boolValue = value;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: AppColors.kDeepGreyColor),
    );
  }
}
