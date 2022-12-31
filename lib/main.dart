import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_scale/generated/l10n.dart';
import 'package:tech_scale/l10n/l10n.dart';
import 'package:tech_scale/screens/scale/main_ui.dart';
import 'package:window_size/window_size.dart';
import 'package:intl/intl.dart' as intl;

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
      locale: const Locale('fa', 'IR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: TestLanguage(),
    );
  }
}

class TestLanguage extends StatefulWidget {
  const TestLanguage({Key? key}) : super(key: key);

  @override
  State<TestLanguage> createState() => _TestLanguageState();
}

class _TestLanguageState extends State<TestLanguage> {
  String text = 'empty';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = AppLocalizations.of(context)!.language;
                  });
                },
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                )),
            Text(
              text, //AppLocalizations.of(context)!.language,
              style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}

/*
    home: const Directionality(
        textDirection: TextDirection.rtl,
        child: ScaleScreen(),
      ),
       */
