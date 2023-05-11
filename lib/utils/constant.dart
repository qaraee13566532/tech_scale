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
  border: Border(
    right: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
  ),
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [kSettingBarGradiantBegin, kSettingBarGradiantEnd],
  ),
);
const kInnerSettingBar = BoxDecoration(
  border: Border(
    right: BorderSide(
      color: Color(0xff3d6499),
      width: 1.0,
    ),
  ),
);

var kWeightCardsStyle = BoxDecoration(
  color: const Color(0xff94A5c9),
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
    color: const Color(0xffF7F7F7));

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

const kSelectedRowColor = Color(0xFF0078d7);

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
  decoration: TextDecoration.none,
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

const kTotalPaneDetailStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 18,
    color: Colors.black);

var kTotalBoarderDecoration = BoxDecoration(
  border: Border.all(color: Colors.black, width: 1),
  borderRadius: const BorderRadius.all(
    Radius.circular(5.0),
  ),
);

const kTotalPaneTotalValueDecoration = BoxDecoration(
  color: Colors.black,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(8),
    bottomLeft: Radius.circular(8),
  ),
);

const kTotalPaneDetailValueBackgroundColor = Color(0xffbee1b5);
const kTotalPaneDetailLabelBackgroundColor = Color(0xffd5ebcf);
const kTotalPaneDetailValueDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(5.0),
  ),
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      kTotalPaneDetailValueBackgroundColor,
      kTotalPaneDetailLabelBackgroundColor,
    ],
    stops: [0.5, 0.5],
  ),
);

const kTotalPaneTotalLabelBackgroundColor = Color(0xff8abe82);
const kTotalPaneTotalValueBackgroundColor = Colors.black;
const kTotalPaneTotalLabelDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(5.0),
  ),
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      kTotalPaneTotalLabelBackgroundColor,
      kTotalPaneTotalValueBackgroundColor,
    ],
    stops: [0.5, 0.5],
  ),
);

var kGenericKeyDecoration = BoxDecoration(
  // color: Colors.white,
  borderRadius: BorderRadius.circular(2),
  border: Border.all(
    width: 1,
    color: const Color(0xffa0a0a0),
  ),
);

const kGenericKeyBegin = Color(0xffd5d5d5);
const kGenericKeyMid1 = Color(0xffc2c2c2);
const kGenericKeyMid2 = Color(0xffb7b7b7);
const kGenericKeyMid3 = Color(0xffafafaf);
const kGenericKeyEnd = Color(0xffc8c8c8);
var kGenericKeyInnerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  border: Border.all(width: 0.5, color: Colors.white),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kGenericKeyBegin,
      kGenericKeyMid1,
      kGenericKeyMid2,
      kGenericKeyMid3,
      kGenericKeyEnd,
    ],
    stops: [0.0, 0.5, 0.52, 0.6, 1],
  ),
);

const kOrderFnBegin = Color(0xff92a7d6);
const kOrderFnMid1 = Color(0xff97a7cf);
const kOrderFnMid2 = Color(0xff879fc7);
const kOrderFnMid3 = Color(0xff7f9ac1);
const kOrderFnEnd = Color(0xffc0d0eb);

var kOrderFnDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  border: Border.all(width: 0.5, color: Colors.white),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kOrderFnBegin,
      kOrderFnMid1,
      kOrderFnMid2,
      kOrderFnMid3,
      kOrderFnEnd,
    ],
    stops: [0.0, 0.5, 0.52, 0.6, 1],
  ),
);

const kTotalFnBegin = Color(0xff9dc882);
const kTotalFnMid1 = Color(0xff8fbe70);
const kTotalFnMid2 = Color(0xff83b464);
const kTotalFnMid3 = Color(0xff7aab5b);
const kTotalFnEnd = Color(0xffb8de84);

var kTotalFnDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  border: Border.all(width: 0.5, color: Colors.white),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kTotalFnBegin,
      kTotalFnMid1,
      kTotalFnMid2,
      kTotalFnMid3,
      kTotalFnEnd,
    ],
    stops: [0.0, 0.5, 0.52, 0.6, 1],
  ),
);

const kGenericKeyTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Tahoma',
    decoration: TextDecoration.none,
    fontSize: 12,
    color: Colors.black);

const kShippingPaneLabelTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 16,
    color: Colors.black);

const kShippingPaneTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 14,
    color: Colors.black);

const kFunctionBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 14,
    color: Colors.black);

const kFunctionBarFnTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Tahoma',
    decoration: TextDecoration.none,
    fontSize: 14,
    color: Colors.black);

const kStatusBarTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'BNazanin',
    decoration: TextDecoration.none,
    fontSize: 14,
    color: Colors.black);

var kSettingButtonDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(2),
  border: Border.all(
    width: 1,
    color: const Color(0xffa0a0a0),
  ),
);

const kSettingButtonBegin = Color(0xfff3e0b6);
const kSettingButtonMid1 = Color(0xffefd59b);
const kSettingButtonMid2 = Color(0xffe9c473);
const kSettingButtonEnd = Color(0xffefd69e);

var kInnerSettingButtonDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(2),
  border: Border.all(width: 1, color: const Color(0xffededed)),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kSettingButtonBegin,
      kSettingButtonMid1,
      kSettingButtonMid2,
      kSettingButtonEnd,
    ],
    stops: [0.0, 0.5, 0.5, 1],
  ),
);

const kTaskPaneHeaderBegin = Color(0xfff7f8fc);
const kTaskPaneHeaderEnd = Color(0xff92abdc);

const kTaskPaneHeaderDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xff3d6499)),
    bottom: BorderSide(color: Color(0xff3d6499)),
  ),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kTaskPaneHeaderBegin,
      kTaskPaneHeaderEnd,
    ],
  ),
);

const kSearchBoxDecoration = BoxDecoration(
  color: Color(0xFFe1edff),
  border: Border(
    bottom: BorderSide(
      color: Color(0xffb5c8ec),
    ),
  ),
);



const kBoxColorBegin = Colors.white;
const kBoxColorEnd = boarderColor;
var kBoxDecoration = BoxDecoration(
  border: Border.all(width: 1, color: boarderColor),
  borderRadius: BorderRadius.circular(3),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kBoxColorBegin,
      kBoxColorEnd,
    ],
  ),
);

const kSelectedBoxColorBegin = Color(0xff097cd7);
const kSelectedBoxColorEnd = Color(0xffb9cbdb);

var kSelectedBoxDecoration = BoxDecoration(
  border: Border.all(width: 0.75, color: Colors.black),
  borderRadius: BorderRadius.circular(3),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kSelectedBoxColorBegin,
      kSelectedBoxColorEnd,
    ],
  ),
);



const boarderColor = Color(0xffbfcddb);
var kSelectedYellowBoxDecoration = BoxDecoration(
  border: Border.all(
    width: 0.75,
    color: const Color(0xffe46136),
  ),
  borderRadius: BorderRadius.circular(3),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Color(0xffe46136),
    ],
  ),
);

var kSelectedGreenBoxDecoration = BoxDecoration(
  border: Border.all(
    width: 0.75,
    color: const Color(0xff1b9615),
  ),
  borderRadius: BorderRadius.circular(3),
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Color(0xff1b9615),
    ],
  ),
);

