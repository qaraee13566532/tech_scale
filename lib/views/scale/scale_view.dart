import 'package:flutter/material.dart';
import 'package:tech_scale/views/scale/Invoice_completion/invoice_complition_tasks.dart';
import 'package:tech_scale/views/scale/function_keys.dart';
import 'package:tech_scale/views/scale/notofication_bar.dart';
import 'package:tech_scale/views/scale/sale_grid.dart';
import 'package:tech_scale/views/scale/setting_bar.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/search.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/taskpad.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_bar.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_info.dart';
import 'package:tech_scale/views/scale/weight_window.dart';

class ScaleView extends StatefulWidget {
  const ScaleView({Key? key}) : super(key: key);

  @override
  State<ScaleView> createState() => _ScaleViewState();
}

class _ScaleViewState extends State<ScaleView> {
  bool showFnLayout = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  flex: 29,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: const [
                                  WeighWindow(),
                                  SaleTransactionBar(),
                                  SaleTransactionInfo(),
                                  SaleGrid(),
                                  InvoiceComplitionTasks(),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: const [
                                    Search(),
                                    TaskPad(),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      showFnLayout ? const FunctionKeys() : Container(),
                      const NotificationBar(),
                    ],
                  )),
              SettingBar(onPressed: []),
            ],
          ),
        ),
      ],
    ));
  }
}
