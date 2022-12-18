import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/views/constant.dart';

class WeightScaleInfoCard extends StatelessWidget {
  const WeightScaleInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
      child: Container(
        decoration: kWeightCardsStyle,
        child: Row(
          children: [
            Text(
              '  Min = 10 kg   Max = 500/1000 kg  e = d = 500g   (III)',
              style: GoogleFonts.ptSans(
                fontSize: 14,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.left,
            ),

          ],
        ),
      ),
    );
  }
}
