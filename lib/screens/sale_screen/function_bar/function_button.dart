import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class FunctionBarButton extends StatelessWidget {
  const FunctionBarButton(
      {Key? key,
      this.buttonText,
      this.keyName,
      this.buttonHeight,
      this.buttonWidth,
      this.keyImage,
      required this.showExpandIcon,
      this.decoration,
      required this.onTap})
      : super(key: key);
  final String? keyName;
  final String? buttonText;
  final double? buttonWidth;
  final double? buttonHeight;
  final VoidCallback? onTap;
  final String? keyImage;
  final bool showExpandIcon;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: kGenericKeyDecoration,
            child: Container(
              decoration: decoration,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        keyImage != null ? Image.asset(keyImage!) : Container(),
                        showExpandIcon
                            ? const Icon(
                                Icons.arrow_drop_up,
                                color: Colors.black,
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          buttonText ?? '',
                          style: kFunctionBarTextStyle,
                        ),
                        Text(
                          keyName ?? '',
                          style: kFunctionBarFnTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
