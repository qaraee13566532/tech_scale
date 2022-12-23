import 'package:flutter/material.dart';
import 'package:tech_scale/model/sale_grid/sale_grid.dart';
import 'package:tech_scale/model/weight/calibration.dart';
import 'package:tech_scale/views/scale/Invoice_completion/invoice_complition_tasks.dart';
import 'package:tech_scale/views/scale/function_keys.dart';
import 'package:tech_scale/views/scale/notofication_bar.dart';
import 'package:tech_scale/views/scale/sale/sale_grid.dart';
import 'package:tech_scale/views/scale/setting_bar.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/search.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/taskpad.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_bar.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_info.dart';
import 'package:tech_scale/views/scale/weight/weight_window.dart';

class ScaleView extends StatefulWidget {
  const ScaleView({Key? key}) : super(key: key);

  @override
  State<ScaleView> createState() => _ScaleViewState();
}

class _ScaleViewState extends State<ScaleView> {
  bool showFnLayout = true;
  int weightValue = 230670;
  int tareValue = 100800;
  int unitPrice = 80000000;
  int totalPrice = 245780000;
  String? weightInfo;
  CalibrationInfo calInfo = CalibrationInfo();
  final List<SaleData> saleData = [
    SaleData()..itemCode = '1000'..description='خیار'..itemType=1..totalPrice=25800..tax=10..unitPrice=1250..weight=100..quantity=0,
    SaleData()..itemCode = '1001'..description='گوجه'..itemType=2..totalPrice=45000..tax=10..unitPrice=1000..weight=25300..quantity=5,
    SaleData()..itemCode = '1002'..description='سیبزمینی'..itemType=1..totalPrice=98000..tax=10..unitPrice=300..weight=40000..quantity=0,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
    SaleData()..itemCode = '1003'..description='موز'..itemType=2..totalPrice=14700..tax=10..unitPrice=970..weight=20500..quantity=240,
  ];

  @override
  void initState() {
    // TODO: implement initState
    calInfo.maxFirstCapacity = 30000000;
    calInfo.maxSecondCapacity = 60000000;
    calInfo.weightFirstDivision = 1000;
    calInfo.weightSecondDivision = 2000;
    weightInfo = calInfo.makeDeviceInfo();
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
                                      weightInfo: weightInfo),
                                  SaleTransactionBar(),
                                  SaleTransactionInfo(),
                                  SaleGrid(saleData:saleData),
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
