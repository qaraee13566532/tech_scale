import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';
import 'package:badges/badges.dart' as badges;

class FloatingCustomerCard extends StatelessWidget {
  final Widget? widgetIcon;
  final int badgeValue;
  final bool hasBadge;
  final VoidCallback? onTap;

  const FloatingCustomerCard(
      {Key? key,
      this.widgetIcon,
      required this.badgeValue,
      required this.hasBadge,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5),
      child: Stack(
        children: [

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kBackgroundSaleTransactionInfoColor,
            ),
            onPressed: onTap,
            child: Center(
              child: badges.Badge(
                showBadge: hasBadge & (badgeValue > 0),
                position: badges.BadgePosition.topStart(top: 0, start: 25),
                badgeContent: Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.transparent),
                  child: Center(
                    child: Text(
                      badgeValue.toString(),
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: Colors.blueAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: widgetIcon!,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

/*
 Badge(
          badgeColor: Colors.transparent,
          elevation: 0,
          position: BadgePosition.topStart(top: 10, start: 10),
          badgeContent: Text(
            '1',
            style: const TextStyle(
                fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
 */
