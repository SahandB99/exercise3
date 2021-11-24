import 'package:flutter/material.dart';

class Bar2 extends StatefulWidget implements PreferredSizeWidget {
  Bar2({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  State<Bar2> createState() => _Bar2State();
}

class _Bar2State extends State<Bar2> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("My To Do List"),
      centerTitle: false,
      leadingWidth: 0,
    );
  }
}
