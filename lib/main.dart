import 'package:flutter/material.dart';
import 'package:exercise3/screens/todo_list/todo_list.dart';
import 'package:exercise3/models/mock_todo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.purple,
      ),
      home: TodoScreen(myToDo),
      debugShowCheckedModeBanner: false,
    );
  }
}
