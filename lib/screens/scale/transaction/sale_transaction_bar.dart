import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class SaleTransactionBar extends StatelessWidget {
  const SaleTransactionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: kSaleTransactionBar,
    );
  }
}
