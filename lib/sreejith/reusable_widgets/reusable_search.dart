import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sreejith/main.dart';




class SearchWidget extends StatefulWidget {
  final String? hintText;
  const SearchWidget({super.key, this.hintText});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchAnchor(
        //todo: need to set color
        viewBackgroundColor: Colors.white,
        //todo: need to set fontsize
        headerTextStyle: TextStyle(fontSize: 15),
        builder: (context, controller) {
          return SearchBar(
            //todo: need to set fontsize
            textStyle: WidgetStateProperty.all(TextStyle(fontSize: 15)),
            elevation: WidgetStateProperty.all(0),
            side: WidgetStateProperty.all(BorderSide(color: Theme.of(context).secondaryHeaderColor)),
            backgroundColor: WidgetStateProperty.all(Colors.white),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
            controller: controller,
            leading: const Icon(Icons.search),
            hintText: widget.hintText,

//todo: need to set fontsize

            hintStyle:
                WidgetStateProperty.all(TextStyle(fontSize: 15)),
            onTap: () {
              if (controller.text.isNotEmpty) {
                controller.openView();
              }
            },
            onChanged: (value) {
              setState(() {
                controller.openView();
              });
            },
          );
        },
        suggestionsBuilder: (context, controller) {
          List<Widget> matchingItems = [];
          for (var item in suggestions) {
            if (item.firstname
                .toLowerCase()
                .contains(controller.text.toLowerCase())) {
              matchingItems.add(
                ListTile(
                  tileColor: Colors.white,
                  //todo: need to set fontsize
                  title: Text(item.firstname,style: TextStyle(fontSize: 15),),
                  onTap: () {
                    setState(() {
                      controller.closeView(item.firstname);
                    });
                  },
                ),
              );
            }
          }

          if (matchingItems.isEmpty && controller.text.isNotEmpty) {
            // If no items match the search text, show a "Nothing found" message
            return [const Text("Nothing found")];
          } else {
            // Otherwise, show the matching items
            return matchingItems;
          }
        },
      ),
    );
  }
}
