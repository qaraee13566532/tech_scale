import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/device_spec_and_icons_lndicators_pane.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/customer_weight_functions.dart';
import 'package:tech_scale/components/weight_card.dart';
import 'package:tech_scale/utils/constant.dart';

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
                    weightValue: weightValue,
                    tareValue: tareValue,
                    title: 'وزن (کیلوگرم)',
                    fractionDigits: 3,
                    iconName: Icons.battery_charging_full,
                    isStable: false,
                    isTared: false,
                    isZero: false,
                    showBatIcon: false,
                    showWeightDetails: false,
                  ),
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: WeightCard(
                    weightValue: weightValue,
                    tareValue: tareValue,
                    title: '(کیلوگرم) پارسنگ',
                    fractionDigits: 3,
                    iconName: Icons.battery_charging_full,
                    isStable: true,
                    isTared: true,
                    isZero: true,
                    showBatIcon: false,
                    showWeightDetails: false,
                  ),
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: WeightCard(
                    weightValue: weightValue,
                    tareValue: weightValue,
                    title: 'فی (ریال)',
                    iconName: Icons.battery_charging_full,
                    isStable: true,
                    isTared: true,
                    isZero: true,
                    showBatIcon: false,
                    showWeightDetails: false,
                  ),
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: WeightCard(
                    weightValue: weightValue,
                    tareValue: weightValue,
                    title: 'قیمت (ریال)',
                    iconName: Icons.battery_charging_full,
                    isStable: true,
                    isTared: true,
                    isZero: true,
                    showBatIcon: false,
                    showWeightDetails: false,
                  ),
                ),
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
