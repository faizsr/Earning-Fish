import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:earning_fish_machine_task/config/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendFishAppbar extends StatelessWidget {
  const SendFishAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 5, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(CustomIcons.arrowLeft),
          ),
          const Text('Send Fish', style: AppTextstyles.bold18),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkBlue.withOpacity(0.1),
                  spreadRadius: 6,
                  blurRadius: 120,
                )
              ],  
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: AppColors.white,
              ),
              onPressed: () {},
              icon: SvgPicture.asset(CustomIcons.notification),
            ),
          )
        ],
      ),
    );
  }
}
