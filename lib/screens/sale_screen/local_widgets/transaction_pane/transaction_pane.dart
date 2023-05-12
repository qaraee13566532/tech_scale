import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/transaction_pane/shipping_dialog.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/transaction_pane/total_dialog.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/transaction_pane/transaction_grid/local_widgets/transaction_card.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionTasks extends StatelessWidget {
  TransactionTasks({Key? key}) : super(key: key);
  final GlobalKey widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kTransactionGrayCard,
      height: 85,
      child: Row(
        children: [
          TransactionCard(
            cardDecoration: kTransactionGrayCard,
            cardName: 'مشتری',
            cardDescription: 'انتخاب مشتری ...',
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
            cardName: 'حمل و نقل',
            cardDescription: 'انتخاب حمل و نقل ...',
            iconColor: kIndicatorColor,
            onTap: () {
              ShippingDialog.showShippingDialog(context,
                  notes: 'Thi is final note...',
                  shippingAddress:
                      'تهران میرداماد حیابان شمس تبریزی شمالی بعد از میدان نجم ابادی پلاک 28 طبقه اول واحد یک.',
                  shippingCharge: 100,
                  shippingTax: 9);
            },
          ),
          Container(
            color: const Color(0xff636363),
            height: double.infinity,
            width: 1,
          ),
          Container(
            color: Colors.white,
            height: double.infinity,
            width: 1.5,
          ),
          TransactionCard(
            key: widgetKey,
            cardDecoration: kTransactionBlackCard,
            cardName: 'جمع کل',
            value: '123456789',
            textStyle: kTransactionTotalStyle,
            iconColor: kTransactionTotalIndicatorColor,
            onTap: () {
              // Offset position=getWidgetPosition();
              // double y = position.dy;
              // double x= position.dx;
              // print('location x= $x -- y=$y ...');
              TotalDialog.showTotalDialog(context,
                  total: '\$ 100', subTotal: '\$ 200', tax: '\$ 50');
            },
          ),
        ],
      ),
    );
  }

  Offset getWidgetPosition() {
    RenderBox box = widgetKey.currentContext!.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    return position;
  }
}
