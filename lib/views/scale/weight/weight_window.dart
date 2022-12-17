import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/views/constant.dart';
import 'package:tech_scale/views/scale/weight/weight_box_card.dart';
import 'package:tech_scale/views/scale/weight_customer_layout/weight_customer_layout.dart';

import '../../../main.dart';

class WeighWindow extends StatelessWidget {
  final int? weightValue;
  final int? tareValue;
  final int? unitPrice;
  final int? totalPrice;

  const WeighWindow(
      {Key? key,
      required this.weightValue,
      required this.tareValue,
      required this.unitPrice,
      required this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundWeightColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                    child:
                        WeightBoxCard(value: totalPrice, title: 'قیمت (ریال)')),
                const SizedBox(width: 5),
                Expanded(
                    child: WeightBoxCard(value: unitPrice, title: 'فی (ریال)')),
                const SizedBox(width: 5),
                Expanded(
                    child: WeightBoxCard(
                        value: tareValue,
                        title: '(Kg) پارسنگ',
                        fractionDigits: 3)),
                const SizedBox(width: 5),
                Expanded(
                    child: WeightBoxCard(
                        value: weightValue,
                        title: '(Kg) وزن',
                        fractionDigits: 3)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          WeightCustomerLayout(badgeValues: [10,0,11,44,0,0]),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}

/*
        - asset: assets/fonts/arial_black.TTF
          style: black
        - asset: assets/fonts/arialbi.TTF
          style: bold_italic
        - asset: assets/fonts/ariali.TTF
          style: italic
        - asset: assets/fonts/ARIALN.TTF
          style: narrow
        - asset: assets/fonts/ARIALNB.TTF
          style: narrow_bold
        - asset: assets/fonts/ARIALNBI.TTF
          style: narrow_bold_italic
        - asset: assets/fonts/ARIALNI.TTF
          style: narrow_italic
        - asset: assets/fonts/arialk.TTF
          style: regular

*/
