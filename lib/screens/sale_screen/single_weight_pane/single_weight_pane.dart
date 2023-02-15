import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/device_spec_and_icons_lndicators_pane.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/customer_weight_functions.dart';
import 'package:tech_scale/utils/constant.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/weight_card.dart';

class SingleWeightPane extends StatelessWidget {
  final int? weightValue;
  final int? tareValue;
  final int? unitPrice;
  final int? totalPrice;
  final String? weightInfo;
  final List<VoidCallback> weightCustomerTasks;

  const SingleWeightPane(
      {Key? key,
        required this.weightValue,
        required this.tareValue,
        required this.unitPrice,
        required this.totalPrice,
        required this.weightInfo,
        required this.weightCustomerTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundWeightColor,
      child: Column(
        children: [
          DevicePane(
              weightInfo: weightInfo!,
              iconName: Icons.battery_charging_full,
              isStable: true,
              isTared: true,
              isZero: true),
          //       SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                    child: WeightCard(
                        value: weightValue,
                        title: '(کیلوگرم) وزن',
                        fractionDigits: 3)),
                const SizedBox(width: 3),
                Expanded(
                    child: WeightCard(
                        value: tareValue,
                        title: '(کیلوگرم) پارسنگ',
                        fractionDigits: 3)),
                const SizedBox(width: 3),
                Expanded(
                    child: WeightCard(value: unitPrice, title: 'فی (ریال)')),
                const SizedBox(width: 3),
                Expanded(
                    child: WeightCard(value: totalPrice, title: 'قیمت (ریال)')),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomerWeightFunctions(
              badgeValues: const [0, 0, 10, 11, 12, 5],
              weightCustomerTasks: weightCustomerTasks),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
