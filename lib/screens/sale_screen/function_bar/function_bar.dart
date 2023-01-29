import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/function_bar/function_button.dart';
import 'package:tech_scale/utils/constant.dart';

class FunctionBar extends StatelessWidget {
  const FunctionBar({Key? key, required this.enableOrderButton})
      : super(key: key);
  static const buttonText = [
    'کالاها',
    'مشتری',
    'تراکنش',
    'وظایف',
    'ابزار',
    'برگشت',
    'سفارش',
    'مجموع'
  ];
  static const keyImages = [
    'assets/images/ItemsByDescription.png',
    'assets/images/CustomersByName.png',
    'assets/images/TransactionItemMedium.png',
    'assets/images/tasks.png',
    'assets/images/setting.png',
    'assets/images/return.png',
    'assets/images/tasks.png',
    'assets/images/coin.png'
  ];
  static const keyNames = ['F2', 'F3', 'F5', 'F6', 'F7', 'F8', 'F9', 'F12'];
  final bool enableOrderButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: const Color(0xFFADD1FF),
      child: Row(
        children: List.generate(
          8,
          (index) => enableOrderButton == false && index == 6
              ? Container()
              : Expanded(
                  child: FunctionBarButton(
                    decoration: index<6  ? kGenericKeyInnerDecoration :  index==6 ? kOrderFnDecoration : kTotalFnDecoration,
                    showExpandIcon: index != 7 ? true : false,
                    keyName: keyNames[index],
                    onTap: () {},
                    buttonText: index!=7  ?  buttonText[index] :  enableOrderButton ? 'ذخیره':'مجموع',
                    keyImage: index!=7  ? keyImages[index] : enableOrderButton ? 'assets/images/save.png' : 'assets/images/coin.png',
                  ),
                ),
        ),
      ),
    );
  }
}
