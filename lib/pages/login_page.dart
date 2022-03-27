import 'package:flutter/material.dart';
import 'package:untitled2/utils/routes.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton=false;
  String name="";
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton=true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton=false;
    });
   }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/UNICOOLO2.png",
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
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
                        onChanged: (value){
                          name=value;
                          setState(() {});
                        },
                        validator: (value){
                          if(value!.isEmpty) {
                            return"UserName Cannot be Empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty) {
                            return"Password Cannot be Empty";
                          }
                          else if(value.length < 8) {
                            return"Password length should be atleast 8";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0,),
                      /*ElevatedButton(
                        onPressed:() {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text("Login"),
                        style: TextButton.styleFrom(maximumSize: Size(550, 40)),
                      )*/
                      Material(
                          color: Colors.deepPurple,
                          //shape: changeButton ? BoxShape.circle:BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(changeButton? 50:8),
                          child: InkWell(
                            onTap: () =>moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width:changeButton ? 50: 150,
                              height: 50,
                              alignment: Alignment.center,
                              child:changeButton?Icon(Icons.done,color:Colors.white,): Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),

                            )
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}