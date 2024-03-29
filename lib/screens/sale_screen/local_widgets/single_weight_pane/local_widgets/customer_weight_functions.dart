import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/dual_weight_pane/local_widgets/floating_customer_card.dart';
import 'package:tech_scale/utils/constant.dart';

class CustomerWeightFunctions extends StatelessWidget {
  final List<int> badgeValues;
  final List<VoidCallback> weightCustomerTasks;

  const CustomerWeightFunctions(
      {Key? key, required this.badgeValues, required this.weightCustomerTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        6,
        (index) => FloatingCustomerCard(
          widgetIcon: index == 0
              ? Text(
                  'صفر',
                  style: kWeightCardTitleStyle.copyWith(
                      color: Colors.indigo, fontWeight: FontWeight.bold),
                )
              : index == 1
                  ? Text('پارسنگ',
                      style: kWeightCardTitleStyle.copyWith(
                          color: Colors.indigo, fontWeight: FontWeight.bold))
                  : const Icon(
                      FontAwesomeIcons.userLarge,
                      size: 30,
                      color: kBackgroundWeightColor,
                    ),
          badgeValue: badgeValues[index],
          hasBadge: (index > 1),
          onTap: weightCustomerTasks[index],
        ),
      ),
    );
  }
}
