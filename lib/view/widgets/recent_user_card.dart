import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:earning_fish_machine_task/config/constants/strings.dart';
import 'package:flutter/material.dart';

class RecentUserCard extends StatelessWidget {
  const RecentUserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.black.withOpacity(0.05),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent User',
            style: AppTextstyles.medium16(),
          ),
          const SizedBox(height: 10),
          userCard(
            profile: user1,
            name: 'Cody Fisher',
          ),
          const SizedBox(height: 25),
          userCard(
            profile: user2,
            name: 'Wade Warren',
          ),
        ],
      ),
    );
  }

  Row userCard({
    required String profile,
    required String name,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey.shade200,
          backgroundImage: AssetImage(profile),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: AppTextstyles.medium14),
            const SizedBox(height: 3),
            Text('3 Dec, 2022  2:00 PM', style: AppTextstyles.regularLight10()),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '-230.00',
              style: AppTextstyles.medium14,
            ),
            Row(
              children: [
                const Icon(
                  Icons.info,
                  color: AppColors.red,
                  size: 11,
                ),
                const SizedBox(width: 2),
                Text(
                  'Fish Buy',
                  style: AppTextstyles.regularLight10(AppColors.red),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
