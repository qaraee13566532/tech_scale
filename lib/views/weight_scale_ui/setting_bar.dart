import 'package:flutter/material.dart';

class SettingBar extends StatelessWidget {
  final VoidCallback? onPressed;

  SettingBar({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        child:GestureDetector(
         child: Container(
           decoration:
            BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.topRight,
                 colors: [
                   Color(0xffE2EEFC),
                   Color(0xffB7D4F7),
                 ],
               )
           ),

           width: double.infinity,
//           color: Color(0xFFC5DDF9),
         ),
          onTap : onPressed,
        )
    );
  }
}
