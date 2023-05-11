import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_scale/utils/constant.dart';

class DualDevicePane extends StatelessWidget {
  final bool isStable, isTared, isZero;
  final IconData iconName;
  final String firstWeightInfo;
  final String secondWeightInfo;

  const DualDevicePane({
    Key? key,
    required this.iconName,
    required this.isStable,
    required this.isTared,
    required this.isZero,
    required this.firstWeightInfo,
    required this.secondWeightInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
      child: Container(
        decoration: kWeightCardsStyle.copyWith(color: kBackgroundWeightColor),
        height: 25,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  firstWeightInfo,
                  style: GoogleFonts.ptSans(
                    fontSize: (mediaQueryData.size.width / 75).toDouble() *1,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.white,
              thickness: 2,
              indent: 5,
                endIndent: 5,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  secondWeightInfo ,
                  style: GoogleFonts.ptSans(
                    fontSize: (mediaQueryData.size.width / 75).toDouble() *1,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
