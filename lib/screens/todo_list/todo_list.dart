import 'package:flutter/material.dart';
import 'package:exercise3/models/todo.dart';
import 'bar.dart';
import 'body.dart';
class TodoScreen extends StatefulWidget {
  final List<Todo> t;
  TodoScreen(this.t);
  @override
  _TodoScreenState createState() => _TodoScreenState();
}
class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: Bar2(),
            body: Body2(),
          ),
        ));
  }
}
