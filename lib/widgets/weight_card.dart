import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/single_weight_pane/local_widgets/indicator_icon.dart';
import 'package:tech_scale/utils/constant.dart';

class WeightCard extends StatelessWidget {
  final int? weightValue;
  final int? tareValue;
  final String? title;
  final int? fractionDigits;
  final bool isStable, isTared, isZero;
  final IconData iconName;
  final bool showBatIcon;
  final bool showWeightDetails;

  const WeightCard({
    Key? key,
    required this.showBatIcon,
    required this.iconName,
    required this.weightValue,
    required this.tareValue,
    required this.title,
    this.fractionDigits,
    required this.isStable,
    required this.isTared,
    required this.isZero,
    required this.showWeightDetails,
  }) : super(key: key);

  String convertToStringFormat(int value) {
    return (value / pow(10, fractionDigits ?? 0))
        .toDouble()
        .toStringAsFixed(fractionDigits ?? 0)
        .replaceAllMapped(
            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          decoration: kWeightCardsStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 17 + (mediaQueryData.size.width - 800) / 50,
              ),
              SizedBox(
                height: 30 + (mediaQueryData.size.width - 800) / 30,
                child: Text(
                  convertToStringFormat(weightValue!),
                  textAlign: TextAlign.center,
                  style: kWeightValueStyle.copyWith(
                      fontSize:
                          (mediaQueryData.size.width / 100).toDouble() * 3,
                      height: 1.2),
                ),
              ),
              if (showWeightDetails)
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'T = ${convertToStringFormat(tareValue!)} Kg',
                        style: kWeightValueStyle.copyWith(
                            fontSize:
                                (mediaQueryData.size.width / 100).toDouble() *
                                    1.4,
                            height: 0.9),
                      ),
                    ],
                  ),
                ),
              if (showWeightDetails)
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IndicatorIcon(
                            iconFile: 'assets/icons/Stable.svg',
                            topMargin: 4,
                            bottomMargin: 4,
                            leftMargin: 5,
                            rightMargin: 5,
                            enable: isStable,
                          ),
                          IndicatorIcon(
                            iconFile: 'assets/icons/Tare.svg',
                            topMargin: 1,
                            bottomMargin: 1,
                            leftMargin: 5,
                            rightMargin: 5,
                            enable: isTared,
                          ),
                          IndicatorIcon(
                            iconFile: 'assets/icons/Zero.svg',
                            topMargin: 4,
                            bottomMargin: 4,
                            leftMargin: 4,
                            rightMargin: 4,
                            enable: isZero,
                          ),
                          if (showBatIcon)
                            Container(
                              decoration: kBatteryIconStyle,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 2, left: 2, top: 0, bottom: 0),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(
                                    iconName,
                                    size: 21,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )),
                ),
            ],
          ),
        ),
        Container(
          height: 17 + (mediaQueryData.size.width - 800) / 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
          ),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: kWeightCardTitleStyle.copyWith(
                color: Colors.blue,
                fontSize: (mediaQueryData.size.width / 100).toDouble() * 1.4,
                height: 1.2),
          ),
        ),
      ],
    );
  }
}
