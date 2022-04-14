
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      color: Colors.white,
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.circle, size: 50, color: Colors.teal,),
                Icon(Icons.circle, size: 50, color: Colors.greenAccent,),
                Icon(Icons.circle, size: 50, color: Colors.yellowAccent,),
                Icon(Icons.circle, size: 50, color: Colors.orange,),
                Icon(Icons.circle, size: 50, color: Colors.red,),
                Icon(Icons.circle, size: 50, color: Colors.purpleAccent,),
                Icon(Icons.circle, size: 50, color: Colors.lightBlueAccent,)
              ],
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: TextField (
            decoration: InputDecoration(

              prefixIcon: Icon(Icons.my_library_add_outlined),
                border: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(15),
                ),

                labelText: 'Choose the Color',
                hintText: 'Enter Your Notes',
            ),

          ),
        ),

      ),

      ],
      ),





    );
  }
}
