import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/anush/response/widget/datagrid_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/dg_model.dart';

class MyDataGridPage extends StatefulWidget {
  @override
  _MyDataGridPageState createState() => _MyDataGridPageState();
}

class _MyDataGridPageState extends State<MyDataGridPage> {
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

  late CustomerDataSource customerDataSource;

  @override
  void initState() {
    super.initState();
    customerDataSource = CustomerDataSource(customers: customers);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight:167 ,
        title: Text("APP BAR"),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(left: 44,right: 44,top: 30,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SALES RECEIPT",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
            Gap(25),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
                color: Color.fromARGB(255, 252, 252, 252)
              ),
              padding: EdgeInsets.only(left: 44,right: 44,top: 30,bottom: 30),
              child: Column(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    height: 500,

                    padding: EdgeInsets.only(left: 40,right: 40),
                    child: SfDataGrid(
                      rowHeight: 50,
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
                                child: Text('Customer', style: TextStyle(fontWeight: FontWeight.bold)))),
                        GridColumn(
                            columnName: 'Payment Method',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('Payment Method', style: TextStyle(fontWeight: FontWeight.bold)))),
                        GridColumn(
                            columnName: 'Account',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('Account', style: TextStyle(fontWeight: FontWeight.bold)))),
                        GridColumn(
                            columnName: 'Currency',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('Currency', style: TextStyle(fontWeight: FontWeight.bold)))),
                        GridColumn(
                            columnName: 'Exchange Rate',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('Exchange Rate', style: TextStyle(fontWeight: FontWeight.bold)))),
                        GridColumn(
                            columnName: 'Total Amount',
                            label: Container(
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold)))),
                      ],


                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        ));

  }
}
