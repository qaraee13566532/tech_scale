import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/views/constant.dart';

class WeightScaleInfoCard extends StatelessWidget {
  const WeightScaleInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
      child: Container(
        // decoration: kWeightCardsStyle,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: kWeightCardsStyle,
                child: Text(
                  ' Min = 10 kg  Max = 500/1000 kg  e = d = 500g III',
                  style: GoogleFonts.ptSans(
                    fontSize: 16,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: kBackgroundWeightColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                      'assets/icons/Stable.svg',
                      color: Colors.white,
                    ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SvgPicture.asset(
                      'assets/icons/Tare.svg',
                      color: Colors.white,
                    ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.5),
                          child: SvgPicture.asset(
                      'assets/icons/Zero.svg',
                      color: Colors.white,
                    ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
