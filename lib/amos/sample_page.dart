import 'package:checkbox_with_text/checkbox_with_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/amos/core/padding/constants.dart';
import 'package:nexteons_widgets/amos/widgets/scrollbar_widget.dart';
import 'package:nexteons_widgets/sajin/buttons/filled%20_button.dart';
import 'package:nexteons_widgets/sajin/buttons/outline_button.dart';

///just a sample page to view scrollbar
class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  int? _selectedBranch;
  final c = ScrollController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //no need
      body: Center(
        child: Container(
          width: 601,
          height: 551,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        const Text(
                          'Branch Access',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CheckboxWidget(
                          isChecked: isChecked,
                          onChanged: (value) {
                            isChecked = value!;
                            setState(() {});
                          },
                          text: 'from package',
                        ),
                      ],
                    ),
                    const Icon(Icons.delete)
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  //custom scroll bar
                  child: MyScrollBarWidget(
                    controller: c,
                    //track color and thumb color refractor akumbole kodukam
                    child: GridView.builder(
                      controller: c,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 5,
                      ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        int branchNumber = index + 1;
                        return Row(
                          children: [
                            Radio<int>(
                              value: branchNumber,
                              groupValue: _selectedBranch,
                              onChanged: (value) {
                                setState(() {
                                  _selectedBranch = value;
                                });
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Colors.blue;
                                  }
                                  return Colors.grey;
                                },
                              ),
                            ),
                            Text(
                              '$branchNumber-Index',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              const Gap(MyPadding.xxLarge),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //mate project ile buttons add akenm
                      // TextButton.icon(
                      //   onPressed: () {
                      //     setState(() {
                      //       _selectedBranch = null;
                      //     });
                      //   },
                      //   icon: const Icon(Icons.clear),
                      //   label: const Text('Clear All'),
                      // ),
                      CustomFilledButton(
                        onPressed: () {
                          print("ok");
                        },
                        icon: Icons.abc,
                      ),
                      CustomOutlineButton(
                        buttonText: "ok",
                        onPressed: () {
                          print("ok");
                        },
                        icon: Icons.clear,
                        // iconColor: Colors.black,
                        // buttonText: "Clear ALL",
                      ),
                      // ElevatedButton.icon(
                      //   onPressed: () {
                      //     print("save button pressed");
                      //   },
                      //   icon: const Icon(Icons.save),
                      //   label: const Text('Save'),
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: Colors.blue,
                      //   ),
                      // ),
                      const Gap(MyPadding.xxLarge),
                      const CustomFilledButton(
                        buttonText: "-----",
                        // buttonText: "mmm",
                        // buttonColor: WidgetStatePropertyAll(Colors.black),
                        icon: Icons.delete,
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CustomOutlineButton(
                      icon: Icons.delete,
                      onPressed: () {
                        print("delete");
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: MyPadding.large,
              )
            ],
          ),
        ),
      ),
    );
  }
}
