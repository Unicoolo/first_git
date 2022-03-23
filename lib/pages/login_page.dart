import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/UNICOOLO2.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ) ,
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  ElevatedButton(
                    onPressed:() {
                      print("hi Saddam");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }

}