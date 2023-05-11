import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tech_scale/model/sale_grid/sale_grid.dart';
import 'package:tech_scale/model/weight/calibration.dart';
import 'package:tech_scale/screens/sale_screen/search.dart';
import 'package:tech_scale/screens/sale_screen/setting_bar/setting_bar.dart';
import 'package:tech_scale/screens/sale_screen/single_weight_pane/single_weight_pane.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/transaction_bar.dart';
import 'package:tech_scale/screens/sale_screen/function_bar/function_bar.dart';
import 'package:tech_scale/screens/sale_screen/status_bar.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/transaction_grid.dart';
import 'package:tech_scale/screens/sale_screen/task_pane/taskpad.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/transaction_details.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/transaction_tasks.dart';
import 'package:tech_scale/utils/custom_date_time.dart';
import 'package:process_run/cmd_run.dart';

import 'dual_weight_pane/dual_weight_pane.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

enum Alignment {
  rightToLeft,
  leftToRight,
}

class _SaleScreenState extends State<SaleScreen> {
  bool showFnLayout = true;
  int weightValue = 230670;
  int tareValue = 100800;
  int unitPrice = 80000000;
  int totalPrice = 245780000;
  bool enableOrderButton = false;
  bool isDualScale = false;
  String? dateTime;
  String? firstWeightInfo;
  String? secondWeightInfo;
  Alignment taskPaneAlignment = Alignment.leftToRight;
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

  List<VoidCallback> weightCustomerTasks = [];
  List<VoidCallback> settingOnTap = [];

  @override
  void initState() {
    // TODO: implement initState
    settingOnTap = List.generate(7, (index) => () {});
    settingOnTap[5] = showHideFunctionBar;
    settingOnTap[6] = showOnScreenKeyboard;
    calInfo.maxFirstCapacity = 30000000;
    calInfo.maxSecondCapacity = 60000000;
    calInfo.weightFirstDivision = 1000;
    calInfo.weightSecondDivision = 2000;
    firstWeightInfo = calInfo.makeDeviceInfo(1);
    secondWeightInfo = calInfo.makeDeviceInfo(2);
    weightCustomerTasks.add(tare);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    weightCustomerTasks.add(remove);
    dateTime = CustomDateTime.getDateTime();
    Timer.periodic(const Duration(minutes: 1), (timer) {
      setState(() {
        dateTime = CustomDateTime.getDateTime();
      });
    });
    super.initState();
  }

  showOnScreenKeyboard() {
    if (Platform.isWindows) {
      ProcessCmd cmd = ProcessCmd(
        'osk.exe',
        [],
        runInShell: true,
      );
      //RUN CMD
      runCmd(cmd, verbose: false, commandVerbose: false);
    }
  }

  showHideFunctionBar() {
    setState(() {
      showFnLayout = !showFnLayout;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              SettingBar(onTap: settingOnTap),
              Expanded(
                  flex: 29,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            taskPaneAlignment == Alignment.leftToRight
                                ? Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: const [
                                        Search(),
                                        TaskPad(),
                                      ],
                                    ))
                                : Container(),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  isDualScale
                                      ? DualWeightPane(
                                          weightValue: weightValue,
                                          tareValue: tareValue,
                                          unitPrice: unitPrice,
                                          totalPrice: totalPrice,
                                          firstWeightInfo: firstWeightInfo,
                                          secondWeightInfo: secondWeightInfo,
                                          isFirstScaleEnabled: true,
                                          isSecondScaleEnabled: true,
                                          weightCustomerTasks:
                                              weightCustomerTasks)
                                      : SingleWeightPane(
                                          weightValue: weightValue,
                                          tareValue: tareValue,
                                          unitPrice: unitPrice,
                                          totalPrice: totalPrice,
                                          weightInfo: firstWeightInfo,
                                          weightCustomerTasks:
                                              weightCustomerTasks,
                                        ),
                                  TransactionBar(onTap: (index) {
                                    setState(() {
                                      if (index != 4) {
                                        if (index == 0 ||
                                            index == 1 ||
                                            index == 3) {
                                          enableOrderButton = true;
                                        } else {
                                          enableOrderButton = false;
                                        }
                                      }
                                    });
                                  }),
                                  TransactionDetail(
                                      comment:
                                          '  عزیزان من از اینجا میوه های بسیار عالی و درجه یک بخرید',
                                      referenceNo: 10045200280.toString()),
                                  TransactionGrid(sales: sales),
                                  TransactionTasks(),
                                ],
                              ),
                            ),
                            taskPaneAlignment == Alignment.rightToLeft
                                ? Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: const [
                                        Search(),
                                        TaskPad(),
                                      ],
                                    ))
                                : Container(),
                          ],
                        ),
                      ),
                      showFnLayout
                          ? FunctionBar(
                              enableOrderButton: enableOrderButton,
                            )
                          : Container(),
                      StatusBar(
                          dateTime: dateTime ?? '',
                          licenseRemainDays: 5,
                          isPrinterOn: true,
                          lastTransactionPrice: 1254800,
                          onHold: 10,
                          registerName: 'شاه حسینی ',
                          registerNumber: 4,
                          transactionCounter: 12),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
