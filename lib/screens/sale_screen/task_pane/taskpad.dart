import 'package:flutter/material.dart';

class TaskPad extends StatelessWidget {
  const TaskPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
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
        ),
      ),
    );
  }
}
