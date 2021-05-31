import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 20;
    var name = "mtechviral";

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter with $name"),
          ),
        ));
  }
}
