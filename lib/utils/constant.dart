import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBackgroundWeightColor = Color(0xff366092);

const kBackgroundSaleTransactionInfoColor = Color(0xffABBBD7);
const kBackgroundSaleTransactionInfoBorderColor = Color(0xffDEDFE2);
var kBackgroundSaleTransactionInfoBorder =
    Border.all(width: 1, color: kBackgroundSaleTransactionInfoBorderColor);
var kBackgroundSaleTransactionInfo = BoxDecoration(
    border: kBackgroundSaleTransactionInfoBorder,
    color: kBackgroundSaleTransactionInfoColor);

const kSaleTransactionBarGradiantBegin = Color(0xffFDFDFE);
const kSaleTransactionBarGradiantEnd = Color(0xff94A5C9);
const kSaleTransactionBar = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          kSaleTransactionBarGradiantBegin,
          kSaleTransactionBarGradiantEnd
        ]));
const kSaleGridBegin = Color(0xffF0F0F0);
const kSaleGridEnd = Color(0xff97AEDD);
const kSaleGrid = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          kSaleGridBegin,
          kSaleGridEnd
        ]));

const kSettingBarGradiantBegin = Color(0xffE3EEFC);
const kSettingBarGradiantEnd = Color(0xffBBD6F8);
const kSettingBar = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [kSettingBarGradiantBegin, kSettingBarGradiantEnd]));

var kWeightCardsStyle = BoxDecoration(
  color: Color(0xff94A5C9),
  borderRadius: BorderRadius.circular(8),
);

const kWeightCardTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 20,
    color: Color(0xffF7F7F7));

const kSaleGridHeaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 18,
    color: Colors.black);

var kWeightValueStyle = GoogleFonts.oswald(
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
    color: Color(0xffF7F7F7));

var kWeightScaleInfo = BoxDecoration(
    color: const Color(0xff94A5C9),
    borderRadius: BorderRadius.circular(8),
);

const List<String> weightSpec = ['', ''];

var kBatteryIconStyle =BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(8));
