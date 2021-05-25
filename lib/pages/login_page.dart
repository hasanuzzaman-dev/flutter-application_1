import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  var changeBtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.blueAccent,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome $name",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                //onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
                onTap: () async {
                  setState(() {
                    changeBtn = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeBtn ? 45 : 250,
                  height: 45,
                  alignment: Alignment.center,
                  child: changeBtn ? Icon(
                    Icons.done,
                    color: Colors.white,
                  ) : Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(25)),
                ),
              )
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);

              //   },
              //  child: Text("Login"),
              //  style: TextButton.styleFrom(
              //    minimumSize: Size(150, 35)
              //  ),
              //  ),
            ],
          ),
        )
      ]),
    ));
  }
}
