import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/utils/constant.dart';
import 'package:tech_scale/screens/scale/weight_info/weight_info_icons.dart';

class WeightScaleInfoCard extends StatelessWidget {
  final bool isStable, isTared, isZero;
  final IconData iconName;
  final String weightInfo;

  const WeightScaleInfoCard({
    Key? key,
    required this.iconName,
    required this.isStable,
    required this.isTared,
    required this.isZero,
    required this.weightInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: kBackgroundWeightColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const WeightInfoIconsSvg(
                      iconFile: 'assets/icons/Stable.svg',
                      topMargin: 4,
                      bottomMargin: 4,
                      leftMargin: 5,
                      rightMargin: 5,
                      enable: false,
                    ),
                    const WeightInfoIconsSvg(
                      iconFile: 'assets/icons/Tare.svg',
                      topMargin: 1,
                      bottomMargin: 1,
                      leftMargin: 5,
                      rightMargin: 5,
                      enable: true,
                    ),
                    const WeightInfoIconsSvg(
                      iconFile: 'assets/icons/Zero.svg',
                      topMargin: 4,
                      bottomMargin: 4,
                      leftMargin: 4,
                      rightMargin: 4,
                      enable: false,
                    ),
                    Container(
                        decoration: kBatteryIconStyle,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 2, left: 2, top: 0, bottom: 0),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              iconName,
                              size: 21,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: kWeightCardsStyle,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(weightInfo,
                    style: GoogleFonts.ptSans(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
