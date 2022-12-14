import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_scale/utils/constant.dart';
import 'package:tech_scale/screens/sale_screen/weight_customer_section//weight_customer_card.dart';

class WeightCustomerLayout extends StatelessWidget {
  final List<int> badgeValues;
  final List<VoidCallback> weightCustomerTasks;
  const WeightCustomerLayout({Key? key, required this.badgeValues,required this.weightCustomerTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          6,
          (index) => WeightCustomerCard(
            widgetIcon:
                index == 0
                    ? Text(
                        'صفر',
                        style: kWeightCardTitleStyle.copyWith(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      )
                    : index == 1
                        ? Text('پارسنگ',
                            style: kWeightCardTitleStyle.copyWith(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold))
                        : const Icon(
                            FontAwesomeIcons.userLarge,
                            size: 30,
                            color: kBackgroundWeightColor,
                          ),
            badgeValue: badgeValues[index],
            hasBadge: (index > 1),
            onTap: weightCustomerTasks[index] ,
          ),
        ),
      ),
    );
  }
}
