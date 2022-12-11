import 'package:flutter/material.dart';

class SettingBar extends StatelessWidget {
  final VoidCallback? onPressed;

  SettingBar({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        color: Colors.lightBlue,
        child:ElevatedButton(
         child: Container(),
          onPressed : onPressed,
        )
    );
  }
}
