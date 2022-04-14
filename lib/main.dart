


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(new TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),

debugShowCheckedModeBanner: false,

    );
  }
}

