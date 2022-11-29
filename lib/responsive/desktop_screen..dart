import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desktop Screen"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: child)
            ],
          )
        ],
      )
    );
  }
}
