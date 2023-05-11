import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/dual_weight_pane/dual_device_spec.dart';
import 'package:tech_scale/components/weight_card.dart';
import 'package:tech_scale/screens/sale_screen/dual_weight_pane/floating_customer_functions.dart';
import 'package:tech_scale/utils/constant.dart';

class DualWeightPane extends StatelessWidget {
  final int? weightValue;
  final int? tareValue;
  final int? unitPrice;
  final int? totalPrice;
  final String? firstWeightInfo;
  final String? secondWeightInfo;
  final List<VoidCallback> weightCustomerTasks;
  final bool isFirstScaleEnabled, isSecondScaleEnabled;

  const DualWeightPane(
      {Key? key,
      required this.weightValue,
      required this.tareValue,
      required this.unitPrice,
      required this.totalPrice,
      required this.firstWeightInfo,
      required this.secondWeightInfo,
      required this.weightCustomerTasks,
      required this.isFirstScaleEnabled,
      required this.isSecondScaleEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundWeightColor,
      child: Column(
        children: [
          DualDevicePane(
              firstWeightInfo: firstWeightInfo!,
              secondWeightInfo: secondWeightInfo!,
              iconName: Icons.battery_charging_full,
              isStable: true,
              isTared: true,
              isZero: true),
          //       SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (isFirstScaleEnabled)
                            Expanded(
                                flex: 1,
                                child: WeightCard(
                                  weightValue: weightValue,
                                  tareValue: weightValue,
                                  title: 'ترازوی یک (کیلوگرم)',
                                  fractionDigits: 3,
                                  iconName: Icons.battery_charging_full,
                                  isStable: true,
                                  isTared: true,
                                  isZero: true,
                                  showBatIcon: true,
                                  showWeightDetails: true,
                                )),
                          if (isFirstScaleEnabled) const SizedBox(width: 3),
                          if (isSecondScaleEnabled)
                            Expanded(
                                flex: 1,
                                child: WeightCard(
                                  weightValue: weightValue,
                                  tareValue: weightValue,
                                  title: 'ترازوی دو (کیلوگرم)',
                                  fractionDigits: 3,
                                  iconName: Icons.battery_charging_full,
                                  isStable: true,
                                  isTared: true,
                                  isZero: true,
                                  showBatIcon: isFirstScaleEnabled == false,
                                  showWeightDetails: true,
                                )),
                          if (isSecondScaleEnabled) const SizedBox(width: 3),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('صفر',
                                style: kWeightCardTitleStyle.copyWith(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('پارسنگ',
                                style: kWeightCardTitleStyle.copyWith(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('ثابت',
                                style: kWeightCardTitleStyle.copyWith(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
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
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingCustomerFunctions(
                          badgeValues: const [10, 7, 13, 10, 2, 5],
                          weightCustomerTasks: weightCustomerTasks),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //     weightCustomerTasks: weightCustomerTasks),),
          // CustomerWeightFunctions(
          //     badgeValues: const [0, 0, 10, 11, 12, 5],
          //     weightCustomerTasks: weightCustomerTasks),
          // const SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }
}

/*
 ElevatedButton(onPressed: (){}, child: Text('صفر',
                            style: kWeightCardTitleStyle.copyWith(
                                color: Colors.indigo, fontWeight: FontWeight.bold)),),
                        ElevatedButton(onPressed: (){}, child: Text('پارسنگ',
                            style: kWeightCardTitleStyle.copyWith(
                                color: Colors.indigo, fontWeight: FontWeight.bold)),),
                        ElevatedButton(onPressed: (){}, child: Text('حذف پارسنگ',
                            style: kWeightCardTitleStyle.copyWith(
                                color: Colors.indigo, fontWeight: FontWeight.bold)),),
 */
