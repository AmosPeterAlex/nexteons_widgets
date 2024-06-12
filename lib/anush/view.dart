import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/anush/data_grid/datagrid.dart';
import 'package:nexteons_widgets/anush/enum_buttonlist/enum_buttonlist.dart';
import 'package:nexteons_widgets/anush/utils/ImageButton.dart';
import 'package:nexteons_widgets/anush/utils/enum/button_bar.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';

import '../gen/assets.gen.dart';
import '../sajin/buttons/text_button.dart';
import '../sreejith/reusable_widgets/reusable_textFormField.dart';
import 'appbar_actionwidget/action_widget.dart';

class MyDataGridPage extends StatefulWidget {
  const MyDataGridPage({super.key});

  @override
  _MyDataGridPageState createState() => _MyDataGridPageState();
}

class _MyDataGridPageState extends State<MyDataGridPage> {
  late CustomerDataSource customerDataSource;
  OverlayEntry? overlayEntry;
  final layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    customerDataSource = CustomerDataSource();
  }

  final data = [
    CustomTextButton(
      buttonText: "Sales",
      underline: true,
      fontSize: 18,
    ),
    CustomTextButton(
      buttonText: "Sales Return",
      underline: false,
    ),
    CustomTextButton(
      buttonText: "Purchase",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Purchase Return",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Stock Entry",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Stock Adjustment",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Stock Entry",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Good Receipt",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Delivery Note",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Branch Purchase",
      underline: true,
    ),
    CustomTextButton(
      buttonText: "Branch Sales",
      underline: true,
    ),
  ];

  void showOverlay() {
    overlayEntry = createOverlayEntry();
    // final renderBox = context.findRenderObject() as RenderBox;
    // final size = renderBox.size;
    // final offset = renderBox.localToGlobal(Offset.zero);
    Overlay.of(context).insert(overlayEntry!);
  }

  void hideOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  OverlayEntry createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 55,
        left: 0,
        right: 0,
        child: CompositedTransformFollower(
          offset: Offset(0, 52),
          link: layerLink,
          showWhenUnlinked: false,
          child: Container(
              color: Color(0xFFE3F3FF),
              height: 132,
              width: double.infinity,
              child: Center(
                child: Container(
                  height: 80,
                  width: 1263,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6, childAspectRatio: 5),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Align(alignment: Alignment.centerLeft, child: data[index]);
                    },
                  ),
                ),
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    hideOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 150,
          leading: CompositedTransformTarget(
            link: layerLink,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.png.logo.image(fit: BoxFit.fill, height: 70, width: 212),
              SizedBox(
                height: 118,
                width: 780,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () => null, icon: Icon(Icons.arrow_back)),
                    Expanded(
                      child: Container(
                        height: 118,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomOutlineButton(icon: Icons.dashboard, buttonText: "Dashboard"),
                                CustomOutlineButton(
                                    icon: Icons.inventory,
                                    buttonText: "Inventary",
                                    onPressed: () {
                                      if (overlayEntry == null) {
                                        showOverlay();
                                      } else {
                                        hideOverlay();
                                      }
                                    }),
                                CustomOutlineButton(
                                  icon: Icons.wallet,
                                  buttonText: "Accounts",
                                  onPressed: () {},
                                ),
                                CustomFilledButton(
                                  icon: Icons.storage,
                                  buttonText: "Masters",
                                )
                              ],
                            ),
                            Gap(13),
                            ReusableTextFormField(
                              hintText: "",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomAppBarActionWidget()
            ],
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.only(left: 44, right: 44, top: 30, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "SALES RECEIPT",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    CustomEnumButtonsRow(
                      buttonCallbacks: {
                        CustomEnumButtonBar.attachFile: () => print("Attach file Pressed"),
                        CustomEnumButtonBar.moveGroup: () => print("Move Group Pressed"),
                        CustomEnumButtonBar.filter: () => print("Filter Pressed"),
                        CustomEnumButtonBar.touchApp: () => print("Touch App Pressed"),
                        CustomEnumButtonBar.barcode: () => print("Barcode Pressed"),
                        CustomEnumButtonBar.print: () => print("Print Pressed"),
                        CustomEnumButtonBar.deviceReset: () => print("Device Reset Pressed"),
                        CustomEnumButtonBar.firstPage: () => print("First Page Pressed"),
                        CustomEnumButtonBar.backward: () => print("Backward Pressed"),
                        CustomEnumButtonBar.forward: () => print("Forward Pressed"),
                        CustomEnumButtonBar.lastPage: () => print("Last Page Pressed"),
                      },
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400),
                      color: const Color.fromARGB(255, 252, 252, 252)),
                  padding: const EdgeInsets.only(left: 44, right: 44, top: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          CustomFilledButton(
                            buttonText: "NEW SALES RECEIPT",
                            icon: Icons.add,
                            textColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                          Spacer(),
                          CustomOutlineButton(
                            icon: Icons.search,
                            buttonText: "Search",
                          ),
                          Gap(7),
                          CustomOutlineButton(
                            icon: Icons.filter,
                            buttonText: "Filer",
                          ),
                          Gap(7),
                          CustomOutlineButton(
                            icon: Icons.calendar_month,
                            buttonText: "Filer",
                          ),
                          Gap(7),
                          CustomOutlineButton(
                            icon: Icons.screen_share,
                            buttonText: "Share",
                          ),
                          Gap(7),
                          CustomOutlineButton(
                            icon: Icons.arrow_drop_down,
                            buttonText: "Bulk Action",
                          ),
                        ],
                      ),
                      const Gap(27),

                      ///data grid item

                      const CustomDataGrid(),

                      ///
                      const Gap(15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("1 of 10 pages", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                            const SizedBox(
                              width: 5,
                            ),
                            const Spacer(),
                            CustomImageButton(
                              assetImage: Assets.png.firstPage,
                            ),
                            CustomImageButton(
                              assetImage: Assets.png.arrowBackwardIos,
                            ),
                            Gap(10),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue.shade800,
                              child: const Text(
                                "1",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Gap(10),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue.shade800,
                              child: const Text(
                                "2",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Gap(10),
                            const Text(
                              "....",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Gap(10),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue.shade800,
                              child: const Text(
                                "10",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Gap(10),
                            CustomImageButton(
                              assetImage: Assets.png.arrowForwardIos,
                            ),
                            CustomImageButton(
                              assetImage: Assets.png.lastPage,
                              onPressed: () => print("Last page button pressed"),
                            ),
                          ]),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFilledButton(
                            icon: Icons.add,
                            buttonText: "NEW ACCOUNT GROUP",
                            iconColor: Colors.white,
                            textColor: Colors.white,
                          ),
                          Gap(15),
                          CustomFilledButton(
                            icon: Icons.add,
                            buttonText: "NEW ACCOUNT",
                            textFontSize: 16,
                            textColor: Colors.white,
                            iconColor: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
