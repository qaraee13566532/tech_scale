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
            style: kTransactionBarDateTimeStyle,
          ),
          Expanded(
            child: Text(
              referenceNo ?? '',
              style: kTransactionBarDateTimeStyle,
            ),
          ),
          const Text(
            'شرح :',
            style: kTransactionBarDateTimeStyle,
          ),
          Expanded(
            child: Text(
              comment ?? '',
              style: kTransactionBarDateTimeStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
