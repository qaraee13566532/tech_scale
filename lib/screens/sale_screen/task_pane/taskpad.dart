import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

class TaskPad extends StatelessWidget {
  const TaskPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 25,
            decoration: kTaskPaneHeaderDecoration,
          ),
          Expanded(
            child: Container(
              color: const Color(0xFFADD1FF),
            ),
          ),
        ],
      ),
    );
  }
}
