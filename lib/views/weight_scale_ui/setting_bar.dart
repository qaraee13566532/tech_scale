import 'package:flutter/material.dart';
import 'package:tech_scale/views/constant.dart';
import 'package:tech_scale/views/weight_scale_ui/weight_scale_ui.dart';

class SettingBar extends StatelessWidget {
  final List<VoidCallback?> onPressed;

  const SettingBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      decoration: kSettingBar,
    );
  }
}

/*
*   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 45,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xffE2EEFC),
            Color(0xffB7D4F7),
          ],
        )),
      ),
    );
  }
  * */
