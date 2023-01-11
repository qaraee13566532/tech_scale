import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key, this.cardDecoration}) : super(key: key);

  final Decoration? cardDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:cardDecoration,
    );
  }
}
