import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brokery/Screens/LoginScreen.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
        Navigator.pushReplacementNamed(context, '/login'));

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Center(
              child: Container(
               alignment: Alignment.center,
                height: double.infinity,
                width: double.infinity,
                color: Color(0xffd40000),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'magicbricks',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                   Text('Indias No. 1 App',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10.0,color: Colors.white),)
                  ],
                  
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
