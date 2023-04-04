import 'package:abc/auth/login.dart';
import 'package:abc/auth/signup.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
        home:  Login() ,
        theme: ThemeData(
          primaryColor: Colors.blue,
          buttonColor: Colors.blue,
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 20,
              color: Colors.white
            )

          )
        ),
        routes: {
          "login" : (context) => Login(),
          "SignUp" : (context) => SignUp()
        },
    );

  }
}


