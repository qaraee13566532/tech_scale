import 'package:flutter/material.dart';
import 'package:tech_scale/views/scale/Invoice_completion/invoice_complition_tasks.dart';
import 'package:tech_scale/views/scale/sale_grid.dart';
import 'package:tech_scale/views/scale/setting_bar.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/search.dart';
import 'package:tech_scale/views/scale/tasks_layout/taskpad/taskpad.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_bar.dart';
import 'package:tech_scale/views/scale/transaction/sale_transaction_info.dart';
import 'package:tech_scale/views/scale/weight_window.dart';


int idnumber = 0;

class ScaleView extends StatefulWidget {
  const ScaleView({Key? key}) : super(key: key);

  @override
  State<ScaleView> createState() => _ScaleViewState();
}

class _ScaleViewState extends State<ScaleView> {
  bool drwaKeys = true;
  int _counter = 0;

  final elvShaped = ElevatedButton.styleFrom(
    backgroundColor: Color(0xffB5B5B5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3.0),
    ),
  );

  void addfunc() {
    setState(() {
      drwaKeys == true ? drwaKeys = false : drwaKeys = true;
    });
  }

  void subfunc() {
    setState(() {
      _counter++;
    });
  }

  void delfunc() {
    setState(() {
      _counter--;
    });
  }

  late List<VoidCallback> funcs = [addfunc, subfunc, delfunc];

  List<String> items = [
    "کالاها",
    "مشتریان",
    "تراکنش",
    "وظایف",
    "ابزار",
    "پس دادن",
    "جمع کل"
  ];
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
                                  children: [
                                    Search(),
                                    TaskPad(),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      if (drwaKeys == true)
                        Container(
                          height: 55,
                          color: Color(0xFFADD1FF),
                        ),
                      Container(
                        height: 25,
                        color: Color(0xFFF0F0F0),
                      ),
                    ],
                  )),
              SettingBar(onPressed: funcs),
            ],
          ),
        ),
      ],
    ));
  }
}
