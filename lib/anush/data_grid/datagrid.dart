import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../utils/customer_model.dart';

class CustomDataGrid extends StatefulWidget {
  const CustomDataGrid({
    super.key,
  });

  @override
  State<CustomDataGrid> createState() => _CustomDataGridState();
}

class _CustomDataGridState extends State<CustomDataGrid> {
  late CustomerDataSource customerDataSource;
  @override
  void initState() {
    super.initState();
    customerDataSource = CustomerDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),

      padding: EdgeInsets.only(left: 40,right: 40),
      child: SfDataGrid(
        rowHeight: 60,
        columnWidthMode: ColumnWidthMode.fill,
        source: customerDataSource,
        headerGridLinesVisibility: GridLinesVisibility.none,
        gridLinesVisibility: GridLinesVisibility.none,
        highlightRowOnHover: false,

        columns: <GridColumn>[
          GridColumn(
              columnName: 'Customer',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Customer', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
          GridColumn(
              columnName: 'Payment Method',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Payment Method', style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)))),
          GridColumn(
              columnName: 'Account',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Account', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
          GridColumn(
              columnName: 'Currency',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Currency', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
          GridColumn(
              columnName: 'Exchange Rate',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Exchange Rate', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
          GridColumn(
              columnName: 'Total Amount',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
        ],


      ),
    );
  }
}
class CustomerDataSource extends DataGridSource {

  List<Customer> customers = <Customer>[
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    Customer('Beckham Logan', 'Bank Account', '0317343857790501', 'AED', 272.22, 244720.00),
    // Add more entries as needed
  ];

  CustomerDataSource() {
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
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
    );
  }
}


///model class

