import 'package:flutter/material.dart';
import 'package:tech_scale/views/constant.dart';

class WeightIndicator extends StatelessWidget {
  const WeightIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            4,
            (index) => Container(
                  height: 55,
                  color: kBackgroundWeightStyle,
                )));
  }
}
