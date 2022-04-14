
import 'package:flutter/material.dart';
import 'package:todo_app/List.dart';
import 'adds.dart';
import 'list2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TodoList(),
        Todo(),
        BottomBar(),
      ],
    );
  }
}
