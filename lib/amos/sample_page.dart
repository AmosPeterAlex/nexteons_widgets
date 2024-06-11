import 'package:flutter/material.dart';
import 'package:nexteons_widgets/amos/scrollbar_widget.dart';

//just a sample page to view scrollbar
class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  int? _selectedBranch;

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
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        const Text(
                          'Branch Access',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
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
                  child: ScrollbarTheme(
                    data: ScrollbarThemeData(
                        thumbColor: WidgetStatePropertyAll(
                            Theme.of(context).highlightColor),
                        trackColor: WidgetStatePropertyAll(
                            Theme.of(context).disabledColor)),
                    child: ScrollBarWidget(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 5,
                        ),
                        itemCount: 30,
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
                                fillColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    if (states.contains(WidgetState.selected)) {
                                      return Colors.blue;
                                    }
                                    return Colors.grey;
                                  },
                                ),
                              ),
                              Text(
                                '$branchNumber - Default Branch',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
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
