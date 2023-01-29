import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {Key? key,
      this.cardDecoration,
      required this.cardName,
      this.cardDescription,
      this.value,
      this.textStyle,
      required this.iconColor,required this.onTap})
      : super(key: key);
  final String cardName;
  final String? cardDescription;
  final Decoration? cardDecoration;
  final String? value;
  final TextStyle? textStyle;
  final Color? iconColor;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Scaffold(
            body: Container(
              decoration: cardDecoration,
              child: Column(
                crossAxisAlignment: value == null
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    leading: Text(
                      cardName,
                      style: textStyle ?? kTransactionStyle,
                    ),
                    trailing: Icon(
                      color: iconColor!,
                      Icons.arrow_drop_up,
                      size: 36,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: value == null
                        ? Text(
                            cardDescription ?? '',
                            style: kTransactionTaskDescriptionStyle,
                            textAlign: TextAlign.right,
                          )
                        : Text(
                            value ?? '',
                            style: textStyle ?? kTransactionStyle,
                            textAlign: TextAlign.left,
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
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: cardDecoration,
            child: Column(
              crossAxisAlignment:
                  value == null ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                ListTile(
                  leading: Text(
                    cardName,
                    style: textStyle ?? kTransactionStyle,
                  ),
                  trailing: Icon(
                    color: iconColor!,
                    Icons.arrow_drop_up,
                    size: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: value == null
                      ? Text(
                          cardDescription ?? '',
                          style: kTransactionTaskDescriptionStyle,
                          textAlign: TextAlign.right,
                        )
                      : Text(
                          value ?? '',
                          style: textStyle ?? kTransactionStyle,
                          textAlign: TextAlign.left,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }*/
}
