import 'package:flutter/material.dart';
import 'package:exercise3/models/todo.dart';
import 'Bar.dart';
import 'body.dart';
import 'float.dart';

class TaskListScreen extends StatefulWidget {
  final Todo TD;
  TaskListScreen(this.TD, {Key? key}) : super(key: key);
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}
class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: Bar1(widget.TD.title),
            body: Body1(widget.TD.myTask),
            floatingActionButton: Float1(widget.TD),
          ),
        ));
  }
}
