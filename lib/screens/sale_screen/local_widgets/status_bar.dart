import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:tech_scale/utils/constant.dart';

class StatusBar extends StatelessWidget {
  const StatusBar(
      {Key? key,
      required this.registerNumber,
      required this.registerName,
      required this.isPrinterOn,
      required this.onHold,
      required this.dateTime,
      required this.transactionCounter,
      required this.lastTransactionPrice,
      required this.licenseRemainDays})
      : super(key: key);
  final int registerNumber;
  final String registerName;
  final int lastTransactionPrice;
  final bool isPrinterOn;
  final int onHold;
  final String dateTime;
  final int transactionCounter;
  final int licenseRemainDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      color: const Color(0xFFF0F0F0),
      child: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Row(
          children: [
            Text(
              dateTime,
              style: kFunctionBarTextStyle,
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Text(
              'نگهداشته شده: ${onHold.toString()}',
              style: kFunctionBarTextStyle,
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            licenseRemainDays < 10
                ? SizedBox(
                    width: (MediaQuery.of(context).size.width-800)/2 +50,
                    child: Marquee(
                      textDirection: TextDirection.rtl,
                      text:
                          '  مشتری گرامی ${licenseRemainDays.toString()} روز مانده به پایان اعتبار نرم افزار . لطفا با بخش پشتیبانی تماس بگیرید . ',
                      style: kFunctionBarTextStyle.copyWith(color: Colors.red,fontSize: 15),
                    ),
                  )
                : Container(),
            licenseRemainDays < 10
                ? const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  )
                : Container(),
            const Expanded(
              child: Text(''),
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            isPrinterOn
                ? const Text(
                    'چاپگر روشن',
                    style: kFunctionBarTextStyle,
                  )
                : const Text(
                    'چاپگر خاموش',
                    style: kFunctionBarTextStyle,
                  ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Text(
              'تعداد ردیف:${transactionCounter.toString()}',
              style: kFunctionBarTextStyle,
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Text(
              'تراکنش آخر:${lastTransactionPrice.toString()}',
              style: kFunctionBarTextStyle,
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Text(
              'صندوق :${registerNumber.toString()} - ${registerName.toString()}',
              style: kFunctionBarTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
