import 'package:flutter/material.dart';
import 'package:nexteons_widgets/sreejith/main.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_dropdown.dart';
import 'package:nexteons_widgets/sreejith/reusable_widgets/reusable_search.dart';

class CustomerGeneral extends StatelessWidget {
  const CustomerGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
actions: [

  IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
  IconButton(onPressed: (){}, icon: Icon(Icons. alarm)),
  IconButton(onPressed: (){}, icon: CircleAvatar(backgroundColor: Colors.yellow,))
  

],


        leading: Icon(Icons.star),
        title: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            
            Container(
              height: 20,
              width: 50,color: Colors.blue,
            ),
                Container(
              height: 20,
              width: 50,color: Colors.blue,
            ),
                Container(
              height: 20,
              width: 50,color: Colors.blue,
            ),
                Container(
              height: 20,
              width: 50,color: Colors.blue,
            )
            
            ],
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Column(
              children: [
                SearchWidget(),
                Container(
                    height: 20, color: Theme.of(context).secondaryHeaderColor)
              ],
            )),
      ),

      // body: Column(
      //   children: [
      //     Text("hi"),
      //     CustomDropDown(
      //       list: dropList,
      //       drophint: "Status",
      //     ),
      //   ],
      // ),
    );
  }
}
