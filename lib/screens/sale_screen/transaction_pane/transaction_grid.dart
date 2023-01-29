import 'package:flutter/material.dart';
import 'package:tech_scale/model/sale_grid/sale_grid.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/common_widgets/data_table.dart';
import 'package:tech_scale/screens/sale_screen/transaction_pane/common_widgets/transaction_cell.dart';
import 'package:tech_scale/utils/constant.dart';

class TransactionGrid extends StatefulWidget {
  final List<SaleData> sales;

  const TransactionGrid({Key? key, required this.sales}) : super(key: key);

  @override
  State<TransactionGrid> createState() => _SaleGridState();
}

class _SaleGridState extends State<TransactionGrid> {
  int sortColumnIndex = 0;
  bool isAscending = true;
  int rowCounter = 0;
  int selectedIndex = 3;
  bool haveKey = false;
  bool isSelected = false;
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    rowCounter = 0;
    return Expanded(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 30,
                decoration: kSaleGrid,
              ),
              Container(
                width: double.infinity,
                child: buildDataTable(),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildDataTable() {
    final columns = [
      'کد کالا',
      'نام کالا',
      'مقدار',
      'فی',
      'مالیات',
      'جمع مبلغ'
    ];
    return DataTable2(
        headingTextStyle: kSaleGridHeaderStyle,
        sortAscending: isAscending,
        sortColumnIndex: sortColumnIndex,
        columns: getColumns(columns),
        columnSpacing: 5,
        headingRowHeight: 30,
        dataRowHeight: 28,
        rows: getRows(widget.sales),
        enableCustomDecorate:  isExpanded,
        selectedIndex: selectedIndex,
        customDecoration: kTransactionRowDecoration);
  }

  getColumns(List<String> columns) => columns
      .map((String column) => DataColumn2(
            label: Text(
              column,
            ),
            onSort: onSort,
          ))
      .toList();

  getRows(List<SaleData> sales) => sales.asMap().entries.map((sale) {
        final cells = [
          sale.value.itemCode,
          sale.value.description,
          sale.value.quantity,
          sale.value.unitPrice,
          sale.value.tax,
          sale.value.totalPrice
        ];
        return DataRow2(
          specificRowHeight:
              selectedIndex == sale.key && (isSelected || isExpanded) ? 70 : null,
          onTap: () {
            setState(() {
              selectedIndex = sale.key;
              isExpanded=false;
              isSelected = true;
            });
          },

          cells: getCells(cells, selectedIndex == sale.key),
          color: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return kSelectedRowColor;
              } else {
                return (sale.key % 2 == 0)
                    ? Colors.white
                    : const Color(0xFFF0F0F0);
              }
            },
          ),
          selected: isSelected && sale.key == selectedIndex ? true : false,
        );
      }).toList();

  getCells(List<dynamic> cells, bool expand) => cells
      .asMap()
      .entries
      .map(
        (data) => DataCell(
          TransactionCell(
            isActiveTextField: data.key > 0 && isExpanded==false,
            isSelected: expand && isSelected,
            isExpanded: expand && isExpanded,
            hasKey: data.key < 4,
            imageId: data.key < 4 ? getImage(data.key) : null,
            cellTextStyle: kCellTextStyle,
            cellText: '${data.value}',
          ),
        ),
      )
      .toList();

  void onSort(int columnIndex, bool ascending) {
    switch (columnIndex) {
      case 0:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.itemCode
                .toLowerCase()
                .compareTo(sale2.itemCode.toLowerCase())
            : sale2.itemCode
                .toLowerCase()
                .compareTo(sale1.itemCode.toLowerCase()));
        break;
      case 1:
        widget.sales.sort((sale1, sale2) => ascending
            ? sale1.description!
                .toLowerCase()
                .compareTo(sale2.description!.toLowerCase())
            : sale2.description!
                .toLowerCase()
                .compareTo(sale1.description!.toLowerCase()));
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

  getImage(int imageId) {
    switch (imageId) {
      case 0:
        return TransactionCellImageId.edit;
      case 1:
        return TransactionCellImageId.item;
      case 2:
        return TransactionCellImageId.remove;
      case 3:
        return TransactionCellImageId.discount;
    }
  }
}

/*
* if (data.key < 4 && haveKey == true &&
                        selectedItem == index)
                      Expanded(
                        child: ElevatedButton(
                          child: Container(
                            child: Text('تخفیف'),
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {},
                        ),
                      )*/
