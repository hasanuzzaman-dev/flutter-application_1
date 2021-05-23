import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 20;
    var name = "mtechviral";

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter with $name"),
          ),
        ));
  }
}
