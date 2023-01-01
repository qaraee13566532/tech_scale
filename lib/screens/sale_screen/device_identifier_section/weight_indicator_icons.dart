import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeightInfoIconsSvg extends StatelessWidget {
  final double leftMargin, rightMargin, topMargin, bottomMargin;
  final String iconFile;
  final bool enable;

  const WeightInfoIconsSvg(
      {Key? key,
      required this.iconFile,
      required this.topMargin,
      required this.bottomMargin,
      required this.leftMargin,
      required this.rightMargin,required this.enable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: enable ? Colors.blueAccent : Colors.grey, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.only(
              right: rightMargin,
              left: leftMargin,
              top: topMargin,
              bottom: bottomMargin),
          child: SvgPicture.asset(
            iconFile,
            color: enable ? Colors.white : Colors.white38,
          ),
        ));
  }
}
