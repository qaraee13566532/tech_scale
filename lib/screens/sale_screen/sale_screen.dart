import 'package:flutter/material.dart';
import 'package:tech_scale/model/sale_grid/sale_grid.dart';
import 'package:tech_scale/model/weight/calibration.dart';
import 'package:tech_scale/screens/sale_screen/transaction_bar_section.dart';
import 'package:tech_scale/screens/sale_screen/transaction_data_section//transaction_section.dart';
import 'package:tech_scale/screens/sale_screen/function_keys_section.dart';
import 'package:tech_scale/screens/sale_screen/notofication_bar_section.dart';
import 'package:tech_scale/screens/sale_screen/sale_grid_section.dart';
import 'package:tech_scale/screens/sale_screen/setting_bar_section.dart';
import 'package:tech_scale/screens/sale_screen/tasks_layout_section/taskpad/search.dart';
import 'package:tech_scale/screens/sale_screen/tasks_layout_section/taskpad/taskpad.dart';
import 'package:tech_scale/screens/sale_screen/transaction_info_section.dart';
import 'package:tech_scale/screens/sale_screen/weight_section//weight_section.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  bool showFnLayout = true;
  int weightValue = 230670;
  int tareValue = 100800;
  int unitPrice = 80000000;
  int totalPrice = 245780000;
  String? weightInfo;
  CalibrationInfo calInfo = CalibrationInfo();
  List<SaleData> sales = [
    SaleData()
      ..itemCode = '1000'
      ..description = 'سیب'
      ..itemType = 1
      ..totalPrice = 25800
      ..tax = 10
      ..unitPrice = 1250
      ..weight = 100
      ..quantity = 93,
    SaleData()
      ..itemCode = '1001'
      ..description = 'چجرمک'
      ..itemType = 2
      ..totalPrice = 45000
      ..tax = 10
      ..unitPrice = 1000
      ..weight = 25300
      ..quantity = 5,
    SaleData()
      ..itemCode = '1002'
      ..description = 'انبه'
      ..itemType = 1
      ..totalPrice = 98000
      ..tax = 10
      ..unitPrice = 300
      ..weight = 40000
      ..quantity = 148,
    SaleData()
      ..itemCode = '1003'
      ..description = 'نارنگی'
      ..itemType = 2
      ..totalPrice = 14700
      ..tax = 10
      ..unitPrice = 970
      ..weight = 20500
      ..quantity = 240,
  ];

  SaleData testSaleData = SaleData()
    ..itemCode = '5554443336'
    ..description = 'qwe rtyuiop asdfdrtgt yertgert gertert6 5436 666j'
    ..itemType = 1
    ..totalPrice = 100000000
    ..tax = 10
    ..unitPrice = 10000000
    ..weight = 77889900
    ..quantity = 1000000;

  void tare() {
    setState(() {
      sales.add(testSaleData);
    });
  }

  void remove() {
    setState(() {
      sales.remove(testSaleData);
    });
  }

  List<VoidCallback> weightCustomerTasks=[];

  @override
  void initState() {
    // TODO: implement initState
    calInfo.maxFirstCapacity = 30000000;
    calInfo.maxSecondCapacity = 60000000;
    calInfo.weightFirstDivision = 1000;
    calInfo.weightSecondDivision = 2000;
    weightInfo = calInfo.makeDeviceInfo();
    weightCustomerTasks.add(tare);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              SettingBar(onPressed: []),
              Expanded(
                  flex: 29,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: const [
                                    Search(),
                                    TaskPad(),
                                  ],
                                )),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  WeighWindow(
                                      weightValue: weightValue,
                                      tareValue: tareValue,
                                      unitPrice: unitPrice,
                                      totalPrice: totalPrice,
                                      weightInfo: weightInfo,
                                      weightCustomerTasks: weightCustomerTasks),
                                  SaleTransactionBar(),
                                  SaleTransactionInfo(),
                                  SaleGrid(sales: sales),
                                  InvoiceComplitionTasks(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      showFnLayout ? const FunctionKeys() : Container(),
                      const NotificationBar(),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
