import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final int days=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Hello $days World"),
        ),
      ),
    );
  }
}