import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/setting_bar/setting_button.dart';
import 'package:tech_scale/utils/constant.dart';

class SettingBar extends StatelessWidget {
  final List<VoidCallback?> onTap;

  const SettingBar({super.key, required this.onTap});

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
                onTap: onTap[0]!,
                child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Image.asset('assets/images/posview.png')),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: onTap[1]!,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.asset('assets/images/manager.png'),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              SettingButton(
                  imageName: 'assets/images/question.png',  onTap: onTap[2]!),
              SettingButton(imageName: 'assets/images/login.png',  onTap: onTap[3]!),
              SettingButton(imageName: 'assets/images/exit.png',  onTap: onTap[4]!),
              Container(
                width: 35,
                height: 1,
                color: const Color(0xff3d6499),
              ),
              SettingButton(imageName: 'assets/images/fn.png', onTap: onTap[5]!),
              SettingButton(
                  imageName: 'assets/images/keyboard.png',  onTap: onTap[6]!),
            ],
          ),
        ),
      ),
    );
  }
}
