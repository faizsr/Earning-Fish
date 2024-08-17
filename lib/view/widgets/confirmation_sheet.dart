import 'package:animate_do/animate_do.dart';
import 'package:earning_fish_machine_task/config/common/custom_filled_button.dart';
import 'package:earning_fish_machine_task/config/common/dual_bg_button.dart';
import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/constants/strings.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool showConfirm = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                CupertinoIcons.clear,
                size: 20,
                color: AppColors.black.withOpacity(0.4),
              ),
            ),
          ),
          showConfirm ? confirmed() : confirmationAlert(),
        ],
      ),
    );
  }

  Padding confirmed() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 25, 35, 50),
      child: FadeInDown(
        delay: const Duration(milliseconds: 50),
        child: Column(
          children: [
            DualBgButton(
              firstColor: AppColors.green,
              secondColor: AppColors.green.withOpacity(0.2),
              icon: CustomIcons.tick,
            ),
            const SizedBox(height: 20),
            const Text('Successfully!', style: AppTextstyles.bold18),
            const SizedBox(height: 10),
            const Text(
              'Congratulation Fish is Sold Out\nand added to seller platform',
              textAlign: TextAlign.center,
              style: AppTextstyles.regularLight14,
            )
          ],
        ),
      ),
    );
  }

  Padding confirmationAlert() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 35, 30),
      child: Column(
        children: [
          const DualBgButton(
            firstColor: AppColors.darkBlue,
            secondColor: AppColors.lightBlue,
            icon: CustomIcons.alert,
          ),
          const SizedBox(height: 20),
          const Text(
            'Are you sure you want\nto Send Fish?',
            style: AppTextstyles.bold18,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomFilledButton(
                  color: AppColors.lightBlue,
                  text: 'No',
                  txtColor: AppColors.darkBlue,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: CustomFilledButton(
                  color: AppColors.darkBlue,
                  text: 'Yes',
                  onPressed: () async {
                    showConfirm = true;
                    setState(() {});
                    await Future.delayed(const Duration(milliseconds: 1300));
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
