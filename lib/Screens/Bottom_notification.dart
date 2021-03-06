import 'package:flutter/material.dart';

class BottomAlert extends StatefulWidget {
  @override
  _BottomAlertState createState() => _BottomAlertState();
}

class _BottomAlertState extends State<BottomAlert> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffd6d4ce),
        appBar: AppBar(
          backgroundColor: Color(0xffd40000),
          title: Text('Notification'),
          actions: [Icon(Icons.settings)],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/alert.jpg'),
                )),
              ),
              Text(
                'No notification yet !',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                color: Color(0xffd40000),
                child: Text(
                  'CONTINUE SEARCH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,

                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
