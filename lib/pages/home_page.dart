import 'package:flutter/material.dart';
import 'package:untitled2/widgets/drawer.dart';

class HomePage extends StatelessWidget{
  final int days=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moaven App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text("Hello $days World"),
        ),
      ),
    );
  }
}