import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.blueAccent,
      child: SingleChildScrollView(
              child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              ),

              SizedBox(
                height: 20.0,
              ),

              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0 ,horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.go,
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
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);

                      },
                     child: Text("Login"),
                     style: TextButton.styleFrom(
                       minimumSize: Size(150, 35)
                     ),
                     ),
                  ],
                ),
              )
           
          ]
          ),
      )
    );
  }
}
