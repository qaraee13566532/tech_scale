import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/views/constant.dart';

class WeightBoxCard extends StatelessWidget {
  final int? value;
  final String? title;
  final int? fractionDigits;

  const WeightBoxCard(
      {Key? key, required this.value, required this.title, this.fractionDigits})
      : super(key: key);

  String convet_to_string_format() {
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
        children: [
          Text(title!, style: kWeightCardTitleStyle),
          Text(convet_to_string_format(),
              style: kWeightValueStyle.copyWith(
                  fontSize: (mediaQueryData.size.width / 100).toDouble() * 3)),
        ],
      ),
    );
  }
}
