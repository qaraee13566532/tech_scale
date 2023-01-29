import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class TotalDialog {
  static Future<void> showTotalDialog(BuildContext context,
      {total = String, subTotal = String, tax = String}) async {
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
              children: [
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    mouseCursor: SystemMouseCursors.click,
                    leading: Image.asset('assets/images/coin.png'),
                    title: const Text(
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
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: kTotalPaneDetailValueDecoration,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Expanded(
                                          child: Text(
                                            'ریز مجموع',
                                            style: kTotalPaneDetailStyle,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'مالیات',
                                            style: kTotalPaneDetailStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            subTotal,
                                            style:
                                                kTotalPaneDetailStyle.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            tax,
                                            style:
                                                kTotalPaneDetailStyle.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: kTotalPaneTotalLabelDecoration,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'جمع کل :',
                                          style: kTotalPaneLabel,
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          total,
                                          style: kTotalPaneLabel.copyWith(
                                              color: const Color(0xff36da0c)),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        );
      },
      /*   transitionBuilder: (_, anim, __, child) {
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
      },*/
    );
  }
}
