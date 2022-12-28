import 'package:flutter/material.dart';
import 'package:tech_scale/model/sale_grid/sale_grid.dart';
import 'package:tech_scale/util/constant.dart';

class SaleGrid extends StatefulWidget {
  final List<SaleData> sales;

  const SaleGrid({Key? key, required this.sales}) : super(key: key);

  @override
  State<SaleGrid> createState() => _SaleGridState();
}

class _SaleGridState extends State<SaleGrid> {
  int sortColumnIndex = 0;
  bool isAscending = true;
  int rowCounter = 0;

  @override
  Widget build(BuildContext context) {
    rowCounter=0;
    return Expanded(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: buildDataTable(),
          ),
        ),
      ),
    );
  }

  buildDataTable() {
    final columns = ['کد کالا', 'نام کالا', 'مقدار', 'فی', 'مالیات', 'قیمت'];
    return DataTable(
        headingTextStyle: kWeightCardTitleStyle.copyWith(
            color: Colors.black, fontWeight: FontWeight.normal),
        sortAscending: isAscending,
        sortColumnIndex: sortColumnIndex,
        columns: getColumns(columns),
        columnSpacing: 10,
        rows: getRows(widget.sales));
  }

  getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(
              column,
            ),
            onSort: onSort,
          ))
      .toList();

  getRows(List<SaleData> sales) => sales.map((sale) {
        final cells = [
          sale.itemCode,
          sale.description,
          sale.quantity,
          sale.unitPrice,
          sale.tax,
          sale.totalPrice
        ];
        rowCounter++;
        return DataRow(
            cells: getCells(cells),
            color: (rowCounter % 2 == 0)
                ? MaterialStateProperty.resolveWith((states) {
                    return Colors.white;
                  })
                : MaterialStateProperty.resolveWith((states) {
                    return const Color(0xFFF0F0F0);
                  }));
      }).toList();

  getCells(List<dynamic> cells) => cells
      .map(
        (data) => DataCell(
          Text('$data'),
        ),
      )
      .toList();

  void onSort(int columnIndex, bool ascending) {
    switch (columnIndex) {
      case 0:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.itemCode.compareTo(sale2.itemCode)
            : sale2.itemCode.compareTo(sale1.itemCode));
        break;
      case 1:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.description!.compareTo(sale2.description!)
            : sale2.description!.compareTo(sale1.description!));
        break;
      case 2:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.quantity!.compareTo(sale2.quantity!)
            : sale2.quantity!.compareTo(sale1.quantity!));
        break;
      case 3:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.unitPrice!.compareTo(sale2.unitPrice!)
            : sale2.unitPrice!.compareTo(sale1.unitPrice!));
        break;
      case 4:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.tax!.compareTo(sale2.tax!)
            : sale2.tax!.compareTo(sale1.tax!));
        break;
      case 5:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.totalPrice!.compareTo(sale2.totalPrice!)
            : sale2.totalPrice!.compareTo(sale1.totalPrice!));
        break;
    }

    setState(() {
      sortColumnIndex = columnIndex;
      isAscending = ascending;
    });
  }
}
