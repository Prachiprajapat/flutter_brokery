import 'package:flutter/material.dart';

class ScheduledTours extends StatefulWidget {
  @override
  _ScheduledToursState createState() => _ScheduledToursState();
}

class _ScheduledToursState extends State<ScheduledTours> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:               Container(
          height: 250,
          color: Colors.white,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/schedule.png'),
                    )),
              ),
              Text(
                'No Scheduled tours yet',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(5) ,
                margin: EdgeInsets.only(left: 20,right: 20),
                child: Center(
                    child: Text(
                      'You have  not Scheduled any tour yet.Start searching to book a tour',
                      textAlign: TextAlign.center,

                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )),
              ),
              Container(
                height: 50,
                width: 160,
                margin: EdgeInsets.only(top: 20),
                color: Color(0xffd40000),
                child: Center(child: Text('Search Properties',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
              )
            ],
          ),
        )
    );
  }
}
