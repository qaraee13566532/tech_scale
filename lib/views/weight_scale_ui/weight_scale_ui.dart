import 'package:flutter/material.dart';
import 'package:tech_scale/views/weight_scale_ui/setting_bar.dart';

class WeightScaleUI extends StatefulWidget {
  const WeightScaleUI({Key? key}) : super(key: key);

  @override
  State<WeightScaleUI> createState() => _WeightScaleUIState();
}

class _WeightScaleUIState extends State<WeightScaleUI> {
  bool drwaKeys=true;

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
                                        color: Colors.green,
                                      ),
                                      Container(
                                        height: 55,
                                        color: Colors.green,
                                      ),
                                      Container(
                                        height: 55,
                                        color: Colors.green,
                                      ),
                                      Container(
                                        height: 55,
                                        color: Colors.greenAccent,
                                      ),
                                      Container(
                                        height: 30,
                                        color: Colors.white60,
                                      ),
                                      Container(
                                        height: 25,
                                        color: Colors.white60,
                                      ),
                                      Container(
                                        height: 20,
                                        color: Colors.white60,
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: 50,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              height: 25,
                                              width: double.infinity,
                                              color:(index%2)==0 ? Colors.white : Colors.grey
                                             );
                                          },
                                        )
                                      ),
                                      Container(
                                        height: 75,
                                        color: Colors.purpleAccent,
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
                                          color: Colors.blueAccent,
                                        ),
                                        Container(
                                          height: 50,
                                          color: Colors.orange,
                                        ),
                                        Expanded(
                                          child: Container(
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          drwaKeys==true ? Container(
                            height: 50,
                            color: Colors.red,
                          ):Container(
                            height: 0,
                          ),
                          Container(
                            height: 25,
                            color: Colors.pink,
                          ),
                        ],
                      )),
                  SettingBar(
                    onPressed: (){
                      setState(() {
                        drwaKeys==true ? drwaKeys=false:drwaKeys=true;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
