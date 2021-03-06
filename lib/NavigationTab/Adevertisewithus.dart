import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advertisewithus extends StatefulWidget {
  @override
  _AdvertisewithusState createState() => _AdvertisewithusState();
}

class _AdvertisewithusState extends State<Advertisewithus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffd7dbd8),
      bottomSheet: Container(
        color: Colors.white,
        height: 50,
        child: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(left: 10),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/callcenter.png"),
                      fit: BoxFit.fill,
                    )
                )
                ),
            Container(
                 alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10,top: 10),
              child: Column(
                children: [
                  Center(child: Text('Pick the best Ad Package',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15),)),
                  Center(child: Text('With the help of our experts',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15),)),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 100,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.red[500],
                ),),
              child: Center(child: Text('Request a\nCallback',style: TextStyle(color: Colors.red),)),
            )
          ],
        ),
      ),
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xffd40000),
          flexibleSpace: Container(
            height: 50,
            margin: EdgeInsets.only(top: 50),
            color: Color(0xffd7dbd8),
            child: Center(
                child: Text(
              'PREMIUM PACAKGE',
              style: TextStyle(color: Colors.black, fontSize: 16),
            )),
          ),
          title: Text('Premium Packages'),
        ),
        preferredSize: Size(double.infinity, 100.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                  child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                height: 200,
                width: 350,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10, left: 10),
                          child: Text(
                            'Gold',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.black),
                          )),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            '120 days validity',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Number of listing :1',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Mobile no. of Unlimited Buyers',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Higher Position  in search for 10 days',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text(
                              'Rs.2599',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'Rs.5168 50% off',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 40,
                              color: Color(0xffd40000),
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Card(
                  child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                height: 200,
                width: 350,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10, left: 10),
                          child: Text(
                            'Gold',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.black),
                          )),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            '120 days validity',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Number of listing :1',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Mobile no. of Unlimited Buyers',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Higher Position  in search for 10 days',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text(
                              'Rs.2599',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'Rs.5168 50% off',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 40,
                              color: Color(0xffd40000),
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Card(
                  child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                height: 200,
                width: 350,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 10, left: 10),
                          child: Text(
                            'Gold',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.black),
                          )),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            '120 days validity',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Number of listing :1',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Mobile no. of Unlimited Buyers',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_right),
                          Text(
                            'Higher Position  in search for 10 days',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_right),
                            Text(
                              'Rs.2599',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'Rs.5168 50% off',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 40,
                              color: Color(0xffd40000),
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
