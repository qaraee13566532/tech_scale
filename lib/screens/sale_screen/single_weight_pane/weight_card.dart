import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class WeightCard extends StatelessWidget {
  final int? value;
  final String? title;
  final int? fractionDigits;

  const WeightCard(
      {Key? key, required this.value, required this.title, this.fractionDigits})
      : super(key: key);

  String convertToStringFormat() {
    return (value! / pow(10, fractionDigits ?? 0))
        .toDouble()
        .toStringAsFixed(fractionDigits ?? 0)
        .replaceAllMapped(
            RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      decoration: kWeightCardsStyle,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 17 + (mediaQueryData.size.width - 800) / 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                )),
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: kWeightCardTitleStyle.copyWith(
                  color: Colors.blue,
                  fontSize:
                      (mediaQueryData.size.width / 100).toDouble() * 1.6,
                  height: 1.2),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: kBackgroundWeightColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                )),
                  height: 30 + (mediaQueryData.size.width - 800) / 30,
            child: Text(
              convertToStringFormat(),
              textAlign: TextAlign.center,
              style: kWeightValueStyle.copyWith(
                  fontSize: (mediaQueryData.size.width / 100).toDouble() * 3,
                  height: 1.2),
            ),
          ),
        ],
      ),
    );
  }
}
