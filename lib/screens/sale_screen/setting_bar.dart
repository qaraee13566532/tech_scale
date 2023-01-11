import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

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
