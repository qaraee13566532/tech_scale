import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/total_pane.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/transaction_card.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionTasks extends StatelessWidget {
  const TransactionTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kTransactionGrayCard,
      height: 85,
      child: Row(
        children: [
          TransactionCard(
            cardDecoration: kTransactionBlackCard,
            cardName: 'جمع کل',
            value: '123456789',
            textStyle: kTransactionTotalStyle,
            iconColor: kTransactionTotalIndicatorColor,
            onTap: () {
              TotalPane.showCustomDialog(context);
            },
          ),
          Container(
            color: Color(0xff636363),
            height: double.infinity,
            width: 1,
          ),
          Container(
            color: Colors.white,
            height: double.infinity,
            width: 1.5,
          ),
          TransactionCard(
            cardDecoration: kTransactionGrayCard,
            cardName: 'حمل و نقل',
            cardDescription: 'انتخاب حمل و نقل ...',
            iconColor: kIndicatorColor,
            onTap: () {},
          ),
          Container(
            color: Color(0xff636363),
            height: double.infinity,
            width: 1,
          ),
          Container(
            color: Colors.white,
            height: double.infinity,
            width: 1.5,
          ),
          TransactionCard(
            cardDecoration: kTransactionGrayCard,
            cardName: 'مشتری',
            cardDescription: 'انتخاب مشتری ...',
            iconColor: kIndicatorColor,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
