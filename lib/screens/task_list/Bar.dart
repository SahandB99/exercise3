import 'package:flutter/material.dart';

class Bar1 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  Bar1(this.title);

  @override
  
  Size get preferredSize => Size.fromHeight(50.0);
  
  @override
  
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("Task List of $title"),
      centerTitle: true,
    );
  }
}
