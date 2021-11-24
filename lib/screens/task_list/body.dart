import 'package:flutter/material.dart';
import 'package:exercise3/models/Task.dart';

class Body1 extends StatefulWidget {
  final List<Task> t;
 Body1(this.t);
  @override
  State<Body1> createState() => _Body1State();
}
class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.t[index].title,
                style: widget.t[index].status == true
                   
                    ? TextStyle()
                 
                    : TextStyle(decoration: TextDecoration.lineThrough),
              ),
              onTap: () {
                setState(() {
                  widget.t[index].status = !widget.t[index].status;
                });
              },
              onLongPress: () {
                setState(() {
                  widget.t.removeAt(index);
                });
              },
            ),
        separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
        itemCount: widget.t.length);
  }
}
