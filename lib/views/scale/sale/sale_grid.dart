import 'package:flutter/material.dart';
import 'package:tech_scale/util/constant.dart';

import '../../../model/sale_grid/sale_grid.dart';
class Person
{
  int? age;
  String ? name;
}
class SaleGrid extends StatefulWidget {
  final List<SaleData> saleData;

  // final VoidCallback? funcSort;
  const SaleGrid({Key? key, required this.saleData}) : super(key: key);

  @override
  SaleGridState createState() => SaleGridState();
}

class SaleGridState extends State<SaleGrid> {
  var dataRows = <DataRow>[];

   List<SaleData> saleData = [
    SaleData()
      ..itemCode = '1000'
      ..description = 'خیار'
      ..itemType = 1
      ..totalPrice = 25800
      ..tax = 10
      ..unitPrice = 1250
      ..weight = 100
      ..quantity = 0,
    SaleData()
      ..itemCode = '1001'
      ..description = 'گوجه'
      ..itemType = 2
      ..totalPrice = 45000
      ..tax = 10
      ..unitPrice = 1000
      ..weight = 25300
      ..quantity = 5,
    SaleData()
      ..itemCode = '1002'
      ..description = 'سیب زمینی و گوجه سبز اصلی'
      ..itemType = 1
      ..totalPrice = 98000
      ..tax = 10
      ..unitPrice = 300
      ..weight = 40000
      ..quantity = 0,
    SaleData()
      ..itemCode = '1003'
      ..description = 'موز'
      ..itemType = 2
      ..totalPrice = 14700
      ..tax = 10
      ..unitPrice = 970
      ..weight = 20500
      ..quantity = 240,
  ];
  int sortColumnIndex = 0;
  bool sort = true;
  final List<String> gidCaptions = [
    'کد کالا',
    'نام کالا',
    'مقدار',
    'فی',
    'مالیات',
    'قیمت'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Color(0xffBBD6F8)),
            sortColumnIndex: sortColumnIndex,
            sortAscending: sort,
            columnSpacing: 10,
            headingRowHeight: 30,
            columns: List.generate(
              gidCaptions.length,
              (index) => DataColumn(
                  label: Text(
                    gidCaptions[index],
                    style: kWeightCardTitleStyle.copyWith(
                        color: Colors.black, fontSize: 16),
                  ),
                  onSort: (columnIndex, ascending) {
                    if (columnIndex == 0) {
                      saleData.sort((a,b)=>ascending ? b.itemCode.compareTo(a.itemCode):a.itemCode.compareTo(b.itemCode));
                      print(saleData[0].itemCode);
                      print(saleData[1].itemCode);
                      print(saleData[2].itemCode);
                      print(saleData[3].itemCode);
                      //    print(saleData);
                    }
                    setState(() {
                      sortColumnIndex = columnIndex;
                      sort = !sort;
                    });
                  }),
            ),
            rows: dataRows,
          ),
        ),
      ),
    ));
  }

  compareString(bool ascending, dynamic itemCode1, dynamic itemCode2) {
    ascending
        ? itemCode1!.compareTo(itemCode2!)
        : itemCode2!.compareTo(itemCode1!);
  }
}

/*
class SaleGrid extends StatelessWidget {
  final List<SaleData> saleData;
  var dataRows = <DataRow>[];
  final VoidCallback? funcSort;

  SaleGrid({Key? key, required this.saleData,required this.funcSort}) : super(key: key) {
    dataRows = List.generate(
        saleData.length,
        (index) => DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(saleData[index].itemCode!),
                ),
                DataCell(
                  Text(saleData[index].description!),
                ),
                DataCell(saleData[index].itemType == 1
                    ? Text(saleData[index].weight.toString())
                    : Text(saleData[index].quantity.toString())),
                DataCell(
                  Text(saleData[index].unitPrice.toString()),
                ),
                DataCell(
                  Text(saleData[index].tax.toString()),
                ),
                DataCell(
                  Text(saleData[index].totalPrice.toString()),
                ),
              ],
            ));
  }

  int? sortColumnIndex;
  bool sort=true;
  final List<String> gidCaptions = [
    'کد کالا',
    'نام کالا',
    'مقدار',
    'فی',
    'مالیات',
    'قیمت'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Color(0xffBBD6F8)),
 //           sortColumnIndex: sortColumnIndex,
   //         sortAscending: sort,
            columnSpacing: 10,
            headingRowHeight: 30,
            columns: List.generate(
              gidCaptions.length,
              (index) => DataColumn(
                  label: Text(
                    gidCaptions[index],
                    style: kWeightCardTitleStyle.copyWith(
                        color: Colors.black, fontSize: 16),
                  ),
                  onSort: (columnIndex, ascending) {
                 //   sortColumnIndex = columnIndex;
                   // sort=!sort;

                  }),
            ),
            rows: dataRows,
          ),
        ),
      ),
    );
  }
}
*/
