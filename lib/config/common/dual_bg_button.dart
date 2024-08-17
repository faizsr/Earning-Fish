import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DualBgButton extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final String icon;
  const DualBgButton({
    super.key,
    required this.firstColor,
    required this.secondColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: secondColor,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: firstColor,
        child: SvgPicture.asset(icon, width: 20),
      ),
    );
  }
}