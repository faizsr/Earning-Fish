import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color? txtColor;
  final void Function()? onPressed;

  const CustomFilledButton({
    super.key,
    this.txtColor,
    required this.text,
    required this.color,
    required this.onPressed,
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
      color: color,
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextstyles.medium16(txtColor ?? AppColors.white),
      ),
    );
  }
}
