import 'package:flutter/material.dart';
import 'package:exercise3/models/mock_todo.dart';
import 'package:exercise3/models/todo.dart';
import 'package:exercise3/screens/task_list/task_List.dart';

class Body2 extends StatefulWidget {
  Body2({Key? key}) : super(key: key);
  @override
  _Body2State createState() => _Body2State();
}
class _Body2State extends State<Body2> {
  final List<Todo> td = myToDo;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(td[index].title),
              subtitle: Text("This list has " +
                  td[index].myTask.length.toString() +
                  " task(s)"),
              trailing: CircleAvatar(
                child: Text(td[index].percentage.toString()),
              ),
              onTap: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TaskListScreen(Todo.copy(td[index]))));
                if (result != null) {
                  setState(() {
                    td[index].update(result);
                  });
                }
                if (result == null) {
                  setState(() {});
                }
              },
            ),
        separatorBuilder: (context, index) => Divider(color: Colors.black),
        itemCount: td.length);
  }
}
