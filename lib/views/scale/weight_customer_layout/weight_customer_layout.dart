import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/views/constant.dart';
import 'package:tech_scale/views/scale/weight_customer_layout/weight_customer_card.dart';

class WeightCustomerLayout extends StatelessWidget {
  final List<int> badgeValues;

  const WeightCustomerLayout({Key? key, required this.badgeValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          6,
          (index) => WeightCustomerCard(
            widgetIcon: index < 4
            ? const Icon(FontAwesomeIcons.userLarge,size: 30,)
            : index == 4
                ? const Icon(Icons.zoom_in,size: 30)
                : const Icon(Icons.zoom_out,size: 30),
            badgeValue: badgeValues[index],
            hasBadge: (index < 4),
          ),
        ),
      ),
    );
  }
}
