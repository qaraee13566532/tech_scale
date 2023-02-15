import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class CustomerWeightCard extends StatelessWidget {
  final Widget? widgetIcon;
  final int badgeValue;
  final bool hasBadge;
  final VoidCallback? onTap;

  const CustomerWeightCard(
      {Key? key,
      this.widgetIcon,
      required this.badgeValue,
      required this.hasBadge,required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kBackgroundSaleTransactionInfoColor,
          ),
          onPressed: onTap,
          child: Center(
              child: Container(
            child: Badge(
              showBadge: hasBadge & (badgeValue > 0),
              position: BadgePosition.topStart(top: -10, start: 25),
              badgeContent: CircleAvatar(
                maxRadius: 10,
                minRadius: 0,
                child: Text(
                  badgeValue.toString(),
                  style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Colors.white ),
                ),
              ),

              badgeColor: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: widgetIcon,
              ),
            ),
          )),
        ));
  }
}
