import 'package:flutter/material.dart';
import 'package:tech_scale/views/constant.dart';

class WeighWindow extends StatelessWidget {
  const WeighWindow({Key? key}) : super(key: key);

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
