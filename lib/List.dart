import 'dart:math';

import 'package:flutter/material.dart';


class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {

    return  Container(
      width: double.infinity,
      height: 400,
      child: Scaffold(
          appBar:  AppBar(
              title: Center(child:Text('Qaydnoma'),),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recents',

                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) =>RemainderItems(),

                  ),
                ),

              ],
            ),
          )

      ),
    );
  }
}
class RemainderItems extends StatelessWidget {
  const RemainderItems({Key? key}) : super(key: key);
  static const activites = [
    'Read',
    'Test',
    'Task',
  ];
  @override
  Widget build(BuildContext context) {
    String activity = activites[Random().nextInt(activites.length)];

    return GestureDetector(
      child: Column(
        children: <Widget> [ Container(

            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 50,

            decoration: BoxDecoration(

              border: Border.all(
                color: Colors.black12,

              ),
              borderRadius: BorderRadius.circular(10),

            ),

            child: Row(
              children: [
                SizedBox(width: 5,),
                Transform.translate(offset: Offset(0,0),

                  child:Icon(Icons.circle, color: Colors.redAccent, size: 10,),

                ),
                SizedBox(width: 5,),
                Text(
                  activity,
                ),

                SizedBox(width: 248,),
                Icon(Icons.check_box, color: Colors.green),
                // Transform.translate(offset: Offset(,0),
                // child: Icon(Icons.check, color: Colors.green),
                // ),
              ],
            ),



        ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Icon(Icons.circle, size: 10, color: Colors.teal,),
          //     Icon(Icons.circle, size: 10, color: Colors.greenAccent,),
          //     Icon(Icons.circle, size: 10, color: Colors.yellowAccent,),
          //     Icon(Icons.circle, size: 10, color: Colors.orange,),
          //     Icon(Icons.circle, size: 10, color: Colors.red,),
          //     Icon(Icons.circle, size: 10, color: Colors.purpleAccent,),
          //   ],
          // )
        ],
      ),


    );

  }
}
