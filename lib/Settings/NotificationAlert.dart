import 'package:flutter/material.dart';

class NotificationAlert extends StatefulWidget {
  bool isSwitched = false;

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationAlert> {
  // bool  isSelected = false;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Notifications',style: TextStyle(color: Colors.white),),
            actions: [
              Switch(
                value: isSwitched,
                onChanged: toggleSwitch,
                activeColor: Colors.white,
                activeTrackColor: Colors.pink[100],
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.white,

              )

            ],
          ),
          body: Container(
            child: Column(
              children: [
                Container
                  (
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 10),
                  height: 190,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10,left: 20),
                        child: Text(
                          'Response  Recieved on Posted Properties',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14,color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,

                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 350,
                              color: Colors.white,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 220,
                                    color: Colors.white,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ) ,
                                              Text(
                                                'Send Seprate Notification for All',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black87,

                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 30,
                                    margin: EdgeInsets.only(left: 30,top: 5),
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Switch(
                                            value: isSwitched,
                                            onChanged: toggleSwitch,
                                            activeColor: Colors.blue,
                                            activeTrackColor: Colors.yellow,
                                            inactiveThumbColor: Colors.redAccent,
                                            inactiveTrackColor: Colors.red,

                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Divider(
                              color: Colors.grey,
                            ),
                            Container(
                              height: 60,
                              width: 350,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 220,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ) ,
                                              Text(
                                                'Send Combined Daily Data',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black87,

                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 30,
                                    margin: EdgeInsets.only(left: 30,top: 5),
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: Column(
                                        children: [
                                              Switch(
                                                  value: isSwitched,
                                                  onChanged: toggleSwitch,
                                                activeColor: Colors.red,
                                                activeTrackColor: Colors.pink[100],
                                                inactiveThumbColor: Colors.redAccent,

                                              )
                                           ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),

          ),
        ),
    );
  }
  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
