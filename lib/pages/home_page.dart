import 'package:flutter/material.dart';
import 'package:untitled2/models/catalog.dart';
import 'package:untitled2/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget{
  final int days=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moaven App"),
      ),
      drawer: MyDrawer(),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount:CatalogModel.items.length,
            itemBuilder: (context,index){
              return ItemWidget(item: CatalogModel.items[index],);
            }
        ),
      )
    );
  }
}