import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({Key? key, this.comment, this.referenceNo})
      : super(key: key);
  final String? referenceNo;
  final String? comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: kBackgroundSaleTransactionInfo,
      child: Row(
        children: [
          const Text(
            '  شماره مرجع :',
            style: kTransactionDetailStyle,
          ),
          Expanded(
            child: Text(
              referenceNo ?? '',
              style: kTransactionDetailStyle,
            ),
          ),
          const Text(
            'شرح :',
            style: kTransactionDetailStyle,
          ),
          Expanded(
            child: Text(
              comment ?? '',
              style: kTransactionDetailStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
