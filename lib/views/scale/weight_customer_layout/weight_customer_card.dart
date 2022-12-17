import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:tech_scale/views/constant.dart';

class WeightCustomerCard extends StatelessWidget {
  final Icon? widgetIcon;
  final int badgeValue;
  final bool hasBadge;

  const WeightCustomerCard(
      {Key? key,
      this.widgetIcon,
      required this.badgeValue,
      required this.hasBadge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kBackgroundSaleTransactionInfoColor,
          ),
          onPressed: () {},
          child: Center(
              child: Container(
            child: Badge(
              showBadge: hasBadge & (badgeValue > 0),
              position: BadgePosition.topStart(top: -12, start: 18),
              badgeContent: Text(
                badgeValue.toString(),
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
              badgeColor: Colors.blue,
              child: widgetIcon,
            ),
          )),
        ));
  }
}