import 'package:flutter/material.dart';
import 'package:untitled2/pages/home_page.dart';
import 'package:untitled2/pages/login_page.dart';
import 'package:untitled2/utils/routes.dart';
import 'package:untitled2/widgets/themes.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:HomePage(),
      themeMode: ThemeMode.light,
      theme:MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,

      darkTheme: MyTheme.darkTheme(context),

      initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.homeRoute:(context)=> HomePage(),
        MyRoutes.loginRoute:(context)=> LoginPage()
      },
    );
  }
}