import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          if (value != null) {
            BlocProvider.of<AuthCubit>(context)
                .updateTermsAndConditionCheckBox(newValue: value);
          }
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: AppColors.kDeepGreyColor),
    );
  }
}
