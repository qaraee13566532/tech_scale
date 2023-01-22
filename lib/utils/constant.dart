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
        colors: [kSaleGridBegin, kSaleGridEnd]));

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

const kIndicatorColor = Color(0xff3B70E5);
const kTransactionBarDropDownBackgroundColor = Color(0xffF1E1BF);
const kTransactionBarBoarderColor = Color(0xff7A8DB2);

const kTransactionBarStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 16,
    color: kIndicatorColor);

const kTransactionBarDropDownTextsStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 16,
    color: Colors.black);

const kTransactionBarDateTimeStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontFamily: 'BHoma',
    decoration: TextDecoration.none,
    fontSize: 16,
    color: Colors.black);

const kTransactionDetailStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 15,
    color: Colors.black);

var kWeightValueStyle = GoogleFonts.oswald(
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
    color: Color(0xffF7F7F7));

var kWeightScaleInfo = BoxDecoration(
  color: const Color(0xff94A5C9),
  borderRadius: BorderRadius.circular(8),
);

var kBatteryIconStyle = BoxDecoration(
    color: Colors.blueAccent, borderRadius: BorderRadius.circular(8));

const kTransactionBarGradiantBegin = Color(0xffFFFFFF);
const kTransactionBarGradiantEnd = Color(0xffA3B3D2);
const kTransactionBar = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kTransactionBarGradiantBegin, kTransactionBarGradiantEnd],
  ),
);

const kTransactionBarGradiantOnMouseHoverBegin = Color(0xfff0d7a1);
const kTransactionBarGradiantOnMouseHoverEnd = Color(0xffe9c473);
const kTransactionBarOnMouseHover = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kTransactionBarGradiantOnMouseHoverBegin,
      kTransactionBarGradiantOnMouseHoverEnd
    ],
  ),
);

const kTransactionCardGradiantBegin = Color(0xffD3D3D3);
const kTransactionCardGradiantEnd = Color(0xff989898);
var kTransactionGrayCard = BoxDecoration(
  border: Border.all(width: 0.5, color: const Color(0xff9D9D9D)),
  gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [kTransactionCardGradiantBegin, kTransactionCardGradiantEnd]),
);

const kTransactionCardBlackGradiantBegin = Color(0xff484848);
const kTransactionCardBlackGradiantEnd = Color(0xff030303);
var kTransactionBlackCard = BoxDecoration(
    border: Border.all(width: 0.5, color: const Color(0xff676767)),
    gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          kTransactionCardBlackGradiantBegin,
          kTransactionCardBlackGradiantEnd
        ]));

const kTransactionStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'BNazanin',
  decoration: TextDecoration.none,
  color: kIndicatorColor,
  fontSize: 22,
);

const kSelectedRowColor =  Color(0xFF0078d7);

const kTransactionTotalColor = Color(0xff36DA0C);
const kTransactionTotalIndicatorColor = Color(0xff63B12E);
const kTransactionTotalStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'BNazanin',
  decoration: TextDecoration.none,
  color: kTransactionTotalColor,
  fontSize: 22,
);

const kTransactionTaskDescriptionStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 14,
    color: Colors.black);

const kCellTextStyle = TextStyle(fontFamily: 'BNazanin', fontSize: 16);

const kTransactionRowGradiantBegin = Color(0xff9bb1d7);
const kTransactionRowGradiantEnd = Color(0xffcbdef1);
const kTransactionRowDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kTransactionRowGradiantBegin,
      kTransactionRowGradiantEnd,
    ],
  ),
);

const kTotalPaneLabel = TextStyle(
  fontFamily: 'BNazanin',
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const kTotalPaneBegin = Color(0xff93acdc);
const kTotalPaneMid = Color(0xffffffff);
const kTotalPaneEnd = Color(0xff93acdc);
var kTotalPaneDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(8),
  border: Border.all(width: 2, color: const Color(0xffbfcdd8)),
  boxShadow: const [
    BoxShadow(
      color: Colors.black,
      blurRadius: 2,
      offset: Offset(2, 3), // changes position of shadow
    ),
  ],
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kTotalPaneBegin,
      kTotalPaneMid,
      kTotalPaneMid,
      kTotalPaneEnd,
    ],
    stops: [0.0, 0.2, 0.8, 1],
  ),
);