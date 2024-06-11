import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';
import '../../model/dg_model.dart';

class CustomerDataSource extends DataGridSource {
  CustomerDataSource({required List<Customer> customers}) {
    dataGridRows = customers.map<DataGridRow>((customer) => DataGridRow(

        cells: [
      DataGridCell<String>(columnName: 'Customer', value: customer.customerName),
      DataGridCell<String>(columnName: 'Payment Method', value: customer.paymentMethod),
      DataGridCell<String>(columnName: 'Account', value: customer.account),
      DataGridCell<String>(columnName: 'Currency', value: customer.currency),
      DataGridCell<double>(columnName: 'Exchange Rate', value: customer.exchangeRate),
      DataGridCell<double>(columnName: 'Total Amount', value: customer.totalAmount),
    ])).toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      color: Colors.white,
      cells: row.getCells().map<Widget>((dataGridCell) {

        int cellIndex = row.getCells().indexOf(dataGridCell);
        int lastCellIndex = row.getCells().length - 1;

        BorderRadius borderRadius = BorderRadius.zero;
        if (cellIndex == 0) {
          borderRadius = const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          );

        } else if (cellIndex == lastCellIndex) {
          borderRadius = const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          );
        }
        return Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 236, 245),
            borderRadius: borderRadius
          ),
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(
            dataGridCell.value.toString(),
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
    );
  }
}
