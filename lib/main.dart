import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:tech_scale/views/scale/scale_view.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    setWindowMinSize(const Size(800, 600));
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: ScaleView(),
      ),
    );
  }
}
