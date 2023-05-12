import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/local_widgets/taskpad_pane/local_widgets/task_pad_builder.dart';
import 'package:tech_scale/utils/constant.dart';

class TaskPadPane extends StatelessWidget {
  const TaskPadPane({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final tilesConfiguration = List.generate(
        26,
            (index) => TilesConfiguration()
          ..height = 1
          ..width = 1);
    tilesConfiguration[22].width=2;
    tilesConfiguration[22].height=2;
    tilesConfiguration[23].width=2;
    tilesConfiguration[23].height=2;
    tilesConfiguration[23].decoration=kSelectedGreenBoxDecoration;
    tilesConfiguration[22].decoration=kSelectedYellowBoxDecoration;

    return Expanded(
      child: Column(
        children: [
          Container(
            height: 25,
            decoration: kTaskPaneHeaderDecoration,
          ),
          Expanded(
            child: Container(
                color: const Color(0xFFcbe2ff),
                child:  TaskPadBuilder(
                  onTap: List.generate(32, (index) => (){
                    print(index);
                  }),
                  mainAxisCount: 8,
                  crossAxisCount: 4,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 4,
                  tilesConfiguration:tilesConfiguration,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
