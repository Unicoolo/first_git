import 'package:flutter/material.dart';
import 'package:untitled2/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/utils/routes.dart';
import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.montserrat().fontFamily,
      ),debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.homeRoute:(context)=> HomePage(),
        MyRoutes.loginRoute:(context)=> LoginPage()
      },
    );
  }
}