import 'package:earning_fish_machine_task/config/constants/app_colors.dart';
import 'package:earning_fish_machine_task/config/utils/app_textstyles.dart';
import 'package:earning_fish_machine_task/config/constants/strings.dart';
import 'package:earning_fish_machine_task/config/common/custom_filled_button.dart';
import 'package:earning_fish_machine_task/view/fish/widgets/fish_detail_widget.dart';
import 'package:earning_fish_machine_task/view/fish/widgets/recent_user_card.dart';
import 'package:earning_fish_machine_task/view/fish/widgets/send_fish_appbar.dart';
import 'package:earning_fish_machine_task/config/common/text_input_field.dart';
import 'package:flutter/material.dart';

class SendFishPage extends StatelessWidget {
  const SendFishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SendFishAppbar(),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                alignment: Alignment.center,
                child: Image.asset(
                  bubbaFish,
                  width: MediaQuery.of(context).size.width - 120,
                ),
              ),
            ),
            DraggableScrollableSheet(
              minChildSize: 0.50,
              maxChildSize: 0.95,
              snap: true,
              snapAnimationDuration: const Duration(milliseconds: 200),
              builder: (context, scrollController) {
                return ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Container(
                    color: AppColors.white,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Bubba Fish',
                              style: AppTextstyles.bold20,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Bubba was a giant grouper that resided at the Shedd Aquarium in Chicago, Illinois. Bubba is believed to be the first fish to undergo chemotherapy.',
                              style: AppTextstyles.regularLight13(),
                            ),
                            const SizedBox(height: 25),
                            const FishDetailWidget(),
                            const SizedBox(height: 25),
                            Text('User ID', style: AppTextstyles.medium16()),
                            const SizedBox(height: 5),
                            const TextInputField(),
                            const SizedBox(height: 15),
                            const RecentUserCard()
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        floatingActionButton: Container(
          margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: const CustomFilledButton(),
        ),
      ),
    );
  }
}
