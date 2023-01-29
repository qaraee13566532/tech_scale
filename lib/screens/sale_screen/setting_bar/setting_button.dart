import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';


class SettingButton extends StatefulWidget {
  const SettingButton({Key? key,required this.imageName}) : super(key: key);
  final String imageName;
  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  bool selectButton=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      child: GestureDetector(
        child: MouseRegion(cursor: SystemMouseCursors.click,
          onEnter: (pos) {setState(() {
            selectButton=true;
          });},
          onExit: (pos) {setState(() {
            selectButton=false;
          });},
          child: Container(
            height: 40,
            decoration: selectButton ? kSettingButtonDecoration: null,
            child: Container(

              decoration: selectButton ? kInnerSettingButtonDecoration: null,
              child: Image.asset(widget.imageName),
            ),
          ),),
      ),
    );
  }
}
