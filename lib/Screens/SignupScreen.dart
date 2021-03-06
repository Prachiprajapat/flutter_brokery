import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_brokery/Screens/HomeScreen.dart';
import 'package:flutter_brokery/Screens/verificationcodescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api.dart';
import 'package:http/http.dart'as http;


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String password, number,name,email;
  bool isLoading = false;
  bool _load = false;


  Future<SignupResponse> signupstate(String username, String number, String password) async {
    final http.Response response = await http.post(
        'http://thenursingapp.com/welcome/registration',
        headers: <String, String>{
          'Accept': 'application/json',
        },
        body: {
          'fullname': username,
          'ContactNumber': number,
          'password':password,
        });
    if (response.statusCode == 200) {
      print(response.body);
      _load = false ;

      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs?.setString("isLoggedIn", "yes");
      // print('$prefs');
      Navigator.pushReplacement(
          context,
          new MaterialPageRoute(
              builder: (BuildContext context) => new Verification()));
      return SignupResponse.fromJson(json.decode(response.body)
      );

    } else {
      throw Exception('Failed to create album.');
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
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
                        'Sign Up to Showcase your\nproperty to 50 Lac+ buyers',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'I am',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            'Buyer Owner',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            'Agent',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 10,right: 10),
                        child: Center(
                          child: Text(
                            'Builder',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ],
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                          ),
                          child: TextFormField(
                            onChanged: (value){
                             name = value;
                            },
                            decoration: InputDecoration(
                                hintText: "Name",
                                contentPadding: EdgeInsets.all(5)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 20),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField (
                            onChanged: (value){
                              email = value;
                            },
                            decoration: InputDecoration(
                                hintText: "Email",
                                contentPadding: EdgeInsets.all(5)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 20),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                          ),
                          child: TextFormField(
                            onChanged: (value){
                              password = value;
                            },
                            decoration: InputDecoration(
                                hintText: "Password",
                                contentPadding: EdgeInsets.all(5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.only(top: 10, right: 10, left: 20),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'IND +91',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 20),
                        height: 40,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          onChanged: (value){
                            number = value;
                          },
                          decoration: InputDecoration(
                              hintText: "Mobile Number",
                              contentPadding: EdgeInsets.all(5)),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      height: 45,
                      width: 400,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xffd40000),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onTap: () {

                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => new Verification()));

               //        if (formkey.currentState.validate()) {
               //      setState(() {
               //          _load = true;
               //             signupstate(name, number,password);
               //      },
               //      // onTap: () => Navigator.pushReplacement(context,
               //      //     MaterialPageRoute(builder: (context) => HomeScreen(
               //      //
               //      //     ))),
               //
               //    );
               //    Row(
               //      children: [
               //        Container(
               //          color: Colors.transparent,
               //          alignment: Alignment.center,
               //          margin: EdgeInsets.only(top: 20, left: 40),
               //          child: Center(
               //            child: Row(
               //              mainAxisAlignment: MainAxisAlignment.start,
               //
               //              children: [
               //                Center(
               //                  child: Text(
               //                    'By clicking below you agree to',
               //                    style: TextStyle(
               //                        fontWeight: FontWeight.normal,
               //                        color: Colors.white,
               //                        fontSize: 12),
               //                    textAlign: TextAlign.center,
               //                  ),
               //                ),
               //                Text(
               //                  '  Magicbricks T& C',
               //                  style: TextStyle(
               //                      fontWeight: FontWeight.normal,
               //                      color: Colors.red,
               //                      fontSize: 14),
               //                ),
               //              ],
               //            ),
               //          ),
               //        ),
               //      ],
               //        );
               // }
    })],
              ),
            ),
          )
        ],
      ),
    );
  }
}
