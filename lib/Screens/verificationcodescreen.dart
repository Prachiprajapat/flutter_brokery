import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<Verification> {
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

                    },)
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
                        hintText: "9998887775",
                        contentPadding: EdgeInsets.all(5)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  height: 45,
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Verification Code ",
                        contentPadding: EdgeInsets.all(5)),
                  ),
                ),
                Container(
                  height: 45,
                  width: 400,
                  color: Color(0xffd40000),
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: GestureDetector(
                    child: Text(
                      "CONTINUE",

                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                      textAlign: TextAlign.center,

                    ),
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/homescreen');

                    },
                  ),
                ),
                Container(
                  height: 45,
                  width: 400,
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                    "or, Get OTP on Call",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 100),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Didnt receive the OTP?',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '    Resend?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
