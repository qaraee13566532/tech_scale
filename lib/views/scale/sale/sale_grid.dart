import 'package:flutter/material.dart';
import 'package:tech_scale/util/constant.dart';

import '../../../model/sale_grid/sale_grid.dart';

class SaleGrid extends StatelessWidget {
  final List<SaleData> saleData;
  var dataRows = <DataRow>[];

  SaleGrid({Key? key, required this.saleData}) : super(key: key) {
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

  final List<String> gidCaptions = [
    'کد کالا',
    'توضیحات',
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
                MaterialStateColor.resolveWith((states) =>  Color(0xffBBD6F8)),
            showCheckboxColumn: true,
     //     dataRowHeight: 20,
            headingRowHeight: 30,
            columns: List.generate(
              gidCaptions.length,
              (index) => DataColumn(
                label: Expanded(
                  child: Text(
                    gidCaptions[index],
                    style: kWeightCardTitleStyle.copyWith(
                        color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ),
            rows: dataRows,
          ),
        ),
      ),
    );
  }
}
