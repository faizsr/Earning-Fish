import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(18, 13, 18, 13),
        hintText: 'User ID & Contact number',
        hintStyle: AppTextstyles.regularLight14,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.darkBlue.withOpacity(0.5)),
        ),
      ),
    );
  }
}
