import 'package:flutter/material.dart';

class PacientesDTS extends DataTableSource{
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('Cell #1 index:$index')),
        DataCell(Text('Cell #2 index:$index')),
        DataCell(Text('Cell #3 index:$index')),
        DataCell(Text('Cell #4 index:$index')),
      ]
      );

  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 100;

  @override
  int get selectedRowCount => 0;

}