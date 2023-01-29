import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class ShippingDialogButton extends StatelessWidget {
  const ShippingDialogButton(
      {Key? key,
      this.buttonText,
      this.buttonHeight,
      this.buttonWidth,
      required this.isActive,
      required this.onTap})
      : super(key: key);
  final String? buttonText;
  final double? buttonWidth;
  final double? buttonHeight;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isActive ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: isActive ? onTap : null,
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: isActive
              ? kGenericKeyDecoration
              : kGenericKeyDecoration.copyWith(color: Colors.transparent),
          child: Container(
            decoration: isActive
                ? kGenericKeyInnerDecoration
                : kGenericKeyDecoration.copyWith(color: Colors.transparent),
            child: Center(
              child: Text(
                buttonText ?? '',
                style: isActive
                    ? kGenericKeyTextStyle
                    : kGenericKeyTextStyle.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
