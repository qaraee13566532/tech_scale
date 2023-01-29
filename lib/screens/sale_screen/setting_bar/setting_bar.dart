import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/setting_bar/setting_button.dart';
import 'package:tech_scale/utils/constant.dart';

class SettingBar extends StatelessWidget {
  final List<VoidCallback?> onPressed;

  const SettingBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      decoration: kInnerSettingBar,
      child: Container(
        decoration: kSettingBar,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 2,
          ),
          child: Column(
            children: [
              GestureDetector(
                child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Image.asset('assets/images/posview.png')),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.asset('assets/images/manager.png'),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SettingButton(imageName: 'assets/images/question.png'),
              SettingButton(imageName: 'assets/images/login.png'),
              SettingButton(imageName: 'assets/images/exit.png'),
              Container(
                width: 35,
                height: 1,
                color: const Color(0xff3d6499),
              ),
              SettingButton(imageName: 'assets/images/fn.png'),
              SettingButton(imageName: 'assets/images/keyboard.png'),
            ],
          ),
        ),
      ),
    );
  }
}
