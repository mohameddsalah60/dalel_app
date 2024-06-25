import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.labelText,
      this.onChanged,
      this.obscureText,
      this.suffixIcon,
      this.style});
  final String? labelText;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff999999),
      obscureText: obscureText ?? false,
      validator: (data) {
        if (data!.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      onChanged: onChanged,
      style: style ??
          AppStyles.sylesPoppinsSemiBold24.copyWith(
            color: const Color(0xff07122E),
            fontSize: 16,
          ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: AppStyles.sylesPoppinsMeduim24.copyWith(
          fontSize: 18,
          color: AppColors.kDeepGreyColor.withOpacity(.6),
        ),
        border: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        errorBorder: _buildOutlineInputBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder({Color? color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: color ?? AppColors.kDeepGreyColor2,
        ));
  }
}
