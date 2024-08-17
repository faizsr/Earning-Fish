import 'package:earning_fish_machine_task/config/utils/theme.dart';
import 'package:earning_fish_machine_task/view/fish/send_fish_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemTheme.change(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Earning Fish',
        theme: AppTheme.light(),
        home: const SendFishPage(),
      ),
    );
  }
}
