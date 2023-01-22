import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class TotalPane {
  static Future<void> showCustomDialog(BuildContext context) async {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 250),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 290,
            width: 360,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: kTotalPaneDecoration,
            child: Column(
              children:  [
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: ListTile(

                    leading:  Image.asset('assets/images/coin.png'),
                    title : const Text(
                      'جمع کل',
                      style: kTotalPaneLabel,
                    ),
                    trailing: const Icon(
                      color: kIndicatorColor,
                      Icons.arrow_drop_down,
                      size: 36,
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(0, -1), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(0, 1), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }
}
