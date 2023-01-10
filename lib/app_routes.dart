import 'package:flutter/material.dart';
import 'package:tech_scale/screens/sale_screen/sale_screen.dart';

class AppRoutes {
  static const homeScreen = '/';
  static const settingScreen = '/settingScreen';

  static buildRoute(Widget child, {required RouteSettings settings}) {
    return MaterialPageRoute(settings: settings, builder: (context) => child);
  }

  static getInitialRoute() => AppRoutes.homeScreen;

  static getRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return buildRoute(const SaleScreen(), settings: settings);
      default:
        return null;
    }
  }
}
