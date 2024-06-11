import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/anush/data_grid/datagrid.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';

class MyDataGridPage extends StatefulWidget {
  @override
  _MyDataGridPageState createState() => _MyDataGridPageState();
}

class _MyDataGridPageState extends State<MyDataGridPage> {


  late CustomerDataSource customerDataSource;

  @override
  void initState() {
    super.initState();
    customerDataSource = CustomerDataSource();
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
            child: SingleChildScrollView(
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CustomFilledButton(buttonText: "NEW SALES RECEIPT",icon: Icons.add,textColor: Colors.white,iconColor: Colors.white,),
                            Spacer(),
                            CustomOutlineButton(icon: Icons.search,buttonText: "Search" ,),
                            Gap(7),
                            CustomOutlineButton(icon: Icons.filter,buttonText: "Filer" ,),
                            Gap(7),
                            CustomOutlineButton(icon: Icons.calendar_month,buttonText: "Filer" ,),
                            Gap(7),
                            CustomOutlineButton(icon: Icons.screen_share,buttonText: "Share" ,),
                            Gap(7),
                            CustomOutlineButton(icon: Icons.arrow_drop_down,buttonText: "Bulk Action" ,),
                          ],
                        ),
                        Gap(27),
                       CustomDataGrid()
                      ],
                    ),
                  ),
                ],
              ),
            )
        ));

  }
}
