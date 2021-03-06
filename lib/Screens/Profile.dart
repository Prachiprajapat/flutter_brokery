import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xffd40000),
                        const Color(0xFFB5004E),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'Welcome Prachi Prajapat!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      padding: EdgeInsets.all(2),
                      child: Text(
                        'prachiprajapat861@gmail.com',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      padding: EdgeInsets.all(2),
                      child: Text(
                        '9977952101',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border(
                    left: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 0.5,
                    ),
                    top: BorderSide(
                      //                    <--- top side
                      color: Colors.black,
                      width: 0.5,
                    ),
                  )),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.message),
                      ),
                      Container(
                          color: Colors.white,
                          height: 60,
                          width: 220,
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Responsbiliy',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'View Details of responses.Connect instantly',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ],
                          )),
                      Container(
                        color: Colors.white,
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.only(left: 30),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/MyResponsibility');
                },
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.message),
                    ),
                    Container(
                        color: Colors.white,
                        height: 60,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'My Properties',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                'Refresh ,manage & edit all properties ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.message),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            color: Colors.white,
                            height: 60,
                            width: 220,
                            margin: EdgeInsets.only(left: 20, top: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'My Video Tours',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'View and Manage your Video Tours',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border(
                    left: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 0.5,
                    ),
                    top: BorderSide(
                      //                    <--- top side
                      color: Colors.black,
                      width: 0.5,
                    ),
                  )),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.message),
                      ),
                      Container(
                          color: Colors.white,
                          height: 50,
                          width: 220,
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'My Requirements',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'View and edit your requirement with us',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),

                      ),
                      Container(
                        color: Colors.white,
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.only(left: 30),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/MyRequirenment');

                },
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.phone),
                    ),
                    Container(
                        color: Colors.white,
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Contacted Properties',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'See Properties you contacted recently',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.phone),
                    ),
                    Container(
                        color: Colors.white,
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Shortlisted Peoples',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'See Properties you shortlisted recently',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.phone),
                    ),
                    Container(
                        color: Colors.white,
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Saved Searches',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'See saved searches',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.phone),
                    ),
                    Container(
                        color: Colors.white,
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Scheduled Tour',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Access your Scheduled Video Tours here',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: Colors.black,
                    width: 0.5,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: Colors.black,
                    width: 0.5,
                  ),
                )),
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(Icons.logout),
                    ),
                    Container(
                        color: Colors.white,
                        height: 50,
                        width: 220,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Logout',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
