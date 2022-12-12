import 'package:flutter/material.dart';

const kBackgroundWeightStyle = Color(0xff366092);

const kBackgroundSaleTransactionInfoColor = Color(0xffABBBD7);
const kBackgroundSaleTransactionInfoBorderColor = Color(0xffDEDFE2);
var   kBackgroundSaleTransactionInfoBorder =  Border.all(width: 1,color: kBackgroundSaleTransactionInfoBorderColor);
var   kBackgroundSaleTransactionInfo = BoxDecoration(border: kBackgroundSaleTransactionInfoBorder,color: kBackgroundSaleTransactionInfoColor);

const kSaleTransactionBarGradiantBegin = Color(0xffFDFDFE);
const kSaleTransactionBarGradiantEnd = Color(0xff94A5C9);
const kSaleTransactionBar = BoxDecoration(gradient: LinearGradient(
      begin: Alignment.topCenter,end: Alignment.bottomCenter,
      colors:[kSaleTransactionBarGradiantBegin,kSaleTransactionBarGradiantEnd
]));


const kSettingBarGradiantBegin = Color(0xffFDFDFE);
const kSettingBarGradiantEnd = Color(0xff94A5C9);
const kSettingBar = BoxDecoration(gradient: LinearGradient(
    begin: Alignment.topLeft,end: Alignment.topRight,
    colors:[kSettingBarGradiantBegin,kSettingBarGradiantEnd
    ]));


