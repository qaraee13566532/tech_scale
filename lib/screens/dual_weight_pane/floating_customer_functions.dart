import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_scale/screens/dual_weight_pane/floating_customer_card.dart';
import 'package:tech_scale/utils/constant.dart';

class FloatingCustomerFunctions extends StatelessWidget {
  final List<int> badgeValues;
  final List<VoidCallback> weightCustomerTasks;

  const FloatingCustomerFunctions(
      {Key? key, required this.badgeValues, required this.weightCustomerTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) => FloatingCustomerCard(
              widgetIcon: const Icon(
                FontAwesomeIcons.userLarge,
                size: 30,
                color: kBackgroundWeightColor,
              ),
              badgeValue: badgeValues[index],
              hasBadge: true,
              onTap: weightCustomerTasks[index],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) => FloatingCustomerCard(
              widgetIcon: const Icon(
                FontAwesomeIcons.userLarge,
                size: 30,
                color: kBackgroundWeightColor,
              ),
              badgeValue: badgeValues[index+3],
              hasBadge: true,
              onTap: weightCustomerTasks[index+3],
            ),
          ),
        ),
      ],
    );
  }
}
