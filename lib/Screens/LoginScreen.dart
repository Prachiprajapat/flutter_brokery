import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brokery/Screens/SignupScreen.dart';
import 'package:flutter_brokery/Screens/verificationcodescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => SignUp())));
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/finall.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          )),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10, top: 10, right: 350),
                    child: GestureDetector(
                        child:
                            new Icon(Icons.arrow_back, color: Colors.white),
                      onTap: (){
                        Navigator.of(context).pop();

                      },
                    )
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Login/Sign Up to Showcase your\n   property to 50 Lac+ buyers',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  height: 45,
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Email or Mobile",
                        contentPadding: EdgeInsets.all(5)),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 45,
                    width: 400,
                    color: Color(0xffd40000),
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/verification');

                  },

                ),
                Container(
                    margin: EdgeInsets.only(top: 15, left: 240),
                    child: Text(
                      'NEED HELP?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                GestureDetector(
                  child: Container(
                    height: 45,
                    width: 400,
                    color: Colors.blueGrey,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                    child: Text(
                      "REGISTER WITH US",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ) ,
                  onTap: (){
                    Navigator.pushNamed(context, '/signup');

                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
