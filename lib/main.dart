import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tech_scale/responsive/desktop_screen..dart';
import 'package:tech_scale/responsive/mobile_screen.dart';
import 'package:tech_scale/responsive/tablet_screen.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (contex) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Colors.indigo),
        primaryColor: Colors.indigo,
      ),
      home: HomePage(),
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileScreen(), tablet: TabletScreen(), desktop: DesktopScreen(),);
  }
}
