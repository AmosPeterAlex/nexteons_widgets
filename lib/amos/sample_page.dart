import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexteons_widgets/amos/checkbox_widget.dart';
import 'package:nexteons_widgets/amos/group_switching_button.dart';
import 'package:nexteons_widgets/amos/scrollbar_widget.dart';

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
          width: 600,
          height: 550,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        // Radio(
                        //   value: 1,
                        //   groupValue: 1,
                        //   onChanged: (value) {},
                        // ),
                        const Text(
                          'Branch Access',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GroupSwitchingWidget(
                          values: [
                            "1",
                            "1",
                            "1h",
                          ],
                        ),
                        CheckboxWidget(
                          onChanged: (value) {
                            isChecked = value!;
                            setState(() {});
                          },
                          isChecked: isChecked,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CheckboxWidget(
                          text: "TICK",
                          onChanged: (value) {
                            isChecked = value!;
                            setState(() {});
                          },
                          isChecked: isChecked,
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              Gap(25),
              Wrap(
                children: [
                  //mate project ile buttons add akenm
                  TextButton.icon(
                    onPressed: () {
                      setState(() {
                        _selectedBranch = null;
                      });
                    },
                    icon: Icon(Icons.clear),
                    label: Text('Clear All'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("save button pressed");
                    },
                    icon: Icon(Icons.save),
                    label: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
