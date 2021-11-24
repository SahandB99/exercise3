import 'package:flutter/material.dart';
import 'package:exercise3/models/todo.dart';
class Float1 extends StatelessWidget {
  Todo T;
  Float1(this.T);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, T);
          },
          label: const Text("Update"),
          icon: const Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, null);
          },
          label: const Text("Cancel"),
          icon: const Icon(Icons.cancel),
        ),
      ],
    );
  }
}
