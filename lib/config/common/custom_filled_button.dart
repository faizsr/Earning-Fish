import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 50,
      minWidth: MediaQuery.of(context).size.width,
      color: AppColors.darkBlue,
      onPressed: () {},
      child: Text(
        'Send',
        style: AppTextstyles.medium16(AppColors.white),
      ),
    );
  }
}
