import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionBar extends StatefulWidget {
  const TransactionBar({Key? key}) : super(key: key);

  @override
  State<TransactionBar> createState() => _TransactionBarState();
}

class _TransactionBarState extends State<TransactionBar> {
  static const dropDownItems = [
    '  کنار گذاشتن',
    '  پیش فاکتور',
    '  تراکنشهای فروش',
    '  سفارش کاری',
    '  فراخوانی'
  ];

  String selectedItem = dropDownItems[2];
  String formattedDate = "";
  bool onMouseHoverColor = false;

  String format1(Date d) {
    final f = d.formatter;

    return '  ${f.wN}  ${f.d} ${f.mN} ${f.yyyy}';
  }

  getDate() => format1(Jalali.fromDateTime(DateTime.now()));

  @override
  void initState() {
    formattedDate = getDate();
    Timer.periodic(Duration(minutes: 1), (timer) {
      setState(() {
        formattedDate = getDate();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: kSaleTransactionBar,
      child: Row(
        children: [
          Expanded(
            flex: 36,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color(0xff7A8DB2),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Text(
                  formattedDate,
                  style: kTransactionBarDateTimeStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 28,
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: kTransactionBarBoarderColor,
                  ),
                ),
                child: DecoratedBox(
                  decoration: onMouseHoverColor
                      ? kTransactionBarOnMouseHover
                      : kTransactionBar,
                  child: DropdownButtonHideUnderline(
                    child: MouseRegion(
                      onHover: (event) {
                        setState(() => onMouseHoverColor = true);
                      },
                      onExit: (event) {
                        setState(() => onMouseHoverColor = false);
                      },
                      child: DropdownButton<String>(
                        iconEnabledColor: kIndicatorColor,
                        dropdownColor: kTransactionBarDropDownBackgroundColor,
                        selectedItemBuilder: (_) =>
                            getMenuWidgets(dropDownItems),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        value: selectedItem,
                        iconSize: 24,
                        isExpanded: true,
                        items: getDropDownItems(dropDownItems),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 36,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1,
                color: const Color(0xff7A8DB2),
              )),
            ),
          ),
        ],
      ),
    );
  }

  getDropDownItems(List<String> items) => items
      .map(
        (e) => DropdownMenuItem(
          value: e.toString(),
          child: Text(
            e,
            style: kTransactionBarDropDownTextsStyle,
          ),
        ),
      )
      .toList();

  getMenuWidgets(List<String> items) => items
      .map(
        (e) => Text(
          e,
          style: kTransactionBarStyle,
        ),
      )
      .toList();
}
