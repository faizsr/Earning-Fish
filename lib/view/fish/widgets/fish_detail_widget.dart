import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:earning_fish_machine_task/config/constants/strings.dart';
import 'package:flutter/material.dart';

class FishDetailWidget extends StatelessWidget {
  const FishDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 25, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          detailCard(
            icon: timerIcon,
            title: 'Feeding Time',
            info: '00:00:00',
          ),
          const SizedBox(width: 1),
          detailCard(
            icon: levelIcon,
            title: 'Level',
            info: '07',
          ),
          const SizedBox(width: 15),
          detailCard(
            icon: coinIcon,
            title: 'Coin',
            info: '843',
          ),
        ],
      ),
    );
  }

  Column detailCard({
    required String icon,
    required String title,
    required String info,
  }) {
    return Column(
      children: [
        Image.asset(icon, width: 26),
        const SizedBox(height: 2),
        Text(title, style: AppTextstyles.medium13),
        const SizedBox(height: 1),
        Text(
          info,
          style: AppTextstyles.regularLight13(AppColors.darkBlue),
        ),
      ],
    );
  }
}
