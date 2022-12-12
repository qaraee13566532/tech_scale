import 'package:flutter/material.dart';
import 'package:tech_scale/views/weight_scale_ui/setting_bar.dart';

int idnumber = 0;

class WeightScaleUI extends StatefulWidget {
  const WeightScaleUI({Key? key}) : super(key: key);

  @override
  State<WeightScaleUI> createState() => _WeightScaleUIState();
}

class _WeightScaleUIState extends State<WeightScaleUI> {
  bool drwaKeys = true;
  int _counter=0;

  final elvShaped = ElevatedButton.styleFrom(
    backgroundColor: Color(0xffB5B5B5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3.0),
    ),
  );

  void addfunc()
  {
    setState(() {
      drwaKeys == true ? drwaKeys = false : drwaKeys = true;
    });
  }
  void subfunc()
  {
    setState(() {
      _counter++;
    });
  }
  void delfunc()
  {
    setState(() {
      _counter--;
    });
  }
  late List<VoidCallback> funcs = [
    addfunc,
    subfunc,
    delfunc
  ];

  List<String> items = [
    "کالاها",
    "مشتریان",
    "تراکنش",
    "وظایف",
    "ابزار",
    "پس دادن",
    "جمع کل"
  ]; //List.generate(7, (index) => index.toString());
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
                                children: [
                                  Container(
                                    height: 55,
                                    color: Color(0xff366092),
                                    child: Center(child: Text('Counter = $_counter',style: TextStyle(fontSize:28,color:Colors.red),)),
                                  ),
                                  Container(
                                    height: 55,
                                    color: Color(0xff366092),
                                  ),
                                  Container(
                                    height: 55,
                                    color: Color(0xff366092),
                                  ),
                                  Container(
                                    height: 55,
                                    color: Color(0xff366092),
                                  ),
                                  Container(
                                    height: 30,
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFDFDFE),
                                        Color(0xff94A5C9),
                                      ],
                                    )),
                                  ),
                                  Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffDEDFE2), width: 1),
                                      color: Color(0xffABBBD7),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFDFDFE),
                                        Color(0xff94A5C9),
                                      ],
                                    )),
                                  ),
                                  Expanded(
                                      child: ListView.builder(
                                    itemCount: 50,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 20,
                                        width: double.infinity,
                                        color: (index % 2) == 0
                                            ? Colors.white
                                            : Color(0xfff0f0f0),
                                      );
                                    },
                                  )),
                                  Container(
                                    height: 75,
                                    color: Color(0xffACACAC),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      color: Color(0xFFF2F5F7),
                                    ),
                                    Container(
                                      height: 50,
                                      color: Color(0xFFABBDE4),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Color(0xFFADD1FF),
                                      ),
                                    ),
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
