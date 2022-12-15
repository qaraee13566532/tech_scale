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

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);
    return Container(
      decoration: kWeightCardsStyle,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: const TextStyle(
                fontFamily: 'BNazanin',
                decoration: TextDecoration.none,
                fontSize: 20,
                color: Color(0xffF7F7F7)),
          ),
          Text(
              (value! / pow(10, fractionDigits ?? 0))
                  .toDouble()
                  .toStringAsFixed(fractionDigits ?? 0)
                  .replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                      (Match m) => '${m[1]},'),
              style: GoogleFonts.oswald(
                  decoration: TextDecoration.none,
                  fontSize: (_mediaQueryData.size.width / 100).toDouble() * 3,
                  color: Color(0xffF7F7F7))),
        ],
      ),
    );
  }
}
