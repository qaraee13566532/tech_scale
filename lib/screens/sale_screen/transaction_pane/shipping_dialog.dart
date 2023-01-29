import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

import 'common_widgets/shipping_dialog_button.dart';

class ShippingDialog {
  static const keyLabels = [
    'ویرایش حمل و نقل',
    'حذف حمل و نقل',
    'انتحاب ادرس',
    'حذف ادرس'
  ];

  static Future<void> showShippingDialog(BuildContext context,
      {shippingAddress = String,
      shippingCharge = int,
      shippingTax = int,
      notes = String}) async {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 250),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 360,
            width: 460,
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
                    leading: Image.asset('assets/images/shipping.png'),
                    title: const Text(
                      'اطلاعات حمل و نقل',
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
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: const Color(0xffd4e1f5),
                      width: double.infinity,
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'آدرس حمل و نقل:',
                                          style: kShippingPaneLabelTextStyle,
                                        ),
                                        Expanded(
                                          child: Text(
                                            shippingAddress,
                                            style: kShippingPaneTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'هزینه ارسال :',
                                          style: kShippingPaneLabelTextStyle,
                                        ),
                                        Text(
                                          shippingCharge.toString(),
                                          style: kShippingPaneLabelTextStyle,
                                        ),
                                        const Text(
                                          'مالیات حمل و نقل :',
                                          style: kShippingPaneLabelTextStyle,
                                        ),
                                        Text(
                                          shippingTax.toString(),
                                          style: kShippingPaneLabelTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'یادداشتها :',
                              style: kShippingPaneLabelTextStyle,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                notes,
                                style: kShippingPaneTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ShippingDialogButton(
                              onTap: () {},
                              isActive: index == 1 ? false : true,
                              buttonText: keyLabels[index],
                              buttonHeight: 45,
                              buttonWidth: 80),
                        ),
                      )),
                ),
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
