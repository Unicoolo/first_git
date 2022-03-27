import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  final imageUrl="https://i.pinimg.com/originals/96/fc/bd/96fcbd2bc24007fd759f0c4d85af99f8.jpg";
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
       children: [
         DrawerHeader(
           padding: EdgeInsets.zero,
           margin: EdgeInsets.zero,
           child: UserAccountsDrawerHeader(
             accountName: Text("Saddam"),
             accountEmail: Text("Unicoolo@gmail.com"),
             currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage(imageUrl),
             ),
           ),
         ),
         ListTile(
           Colors.deepPurple;
           leading: Icon(Icons.home),
           title: Text("Home",textScaleFactor: 1.2,),
         ),
         ListTile(
           leading: Icon(Icons.card_travel_rounded),
           title: Text("Profile",textScaleFactor: 1.2,),
         ),
         ListTile(
           leading: Icon(Icons.mail),
           title: Text("Mail me",textScaleFactor: 1.2,),
         ),

       ], 
      ),
    );
  }


}