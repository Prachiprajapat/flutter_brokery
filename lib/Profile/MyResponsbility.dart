import 'package:flutter/material.dart';
import 'package:flutter_brokery/BottomSavedTab/Contacted.dart';
import 'package:flutter_brokery/BottomSavedTab/LastViewed.dart';
import 'package:flutter_brokery/BottomSavedTab/SavedSearches.dart';
import 'package:flutter_brokery/BottomSavedTab/ScheduledTours.dart';
import 'package:flutter_brokery/BottomSavedTab/Shortlisted.dart';

import 'TabMyproperties.dart';
import 'TabResponses.dart';
class MyResponsibility extends StatefulWidget {
  @override
  _MyResponsibilityState createState() => _MyResponsibilityState();
}

class _MyResponsibilityState extends State<MyResponsibility> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.pink[800],
          //Changing this will change the color of the TabBar
          accentColor: Colors.cyan[600],
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xffd40000),
                        const Color(0xFFB5004E),
                      ],
                      begin:  Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
              ),

              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: Color(0xffd40000),
              title: Text('My Magic Box'),
              bottom: PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: Container(
                  color: Colors.white,
                  child: TabBar(

                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: TextStyle(color: Colors.grey,fontSize: 16),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(color: Colors.red),





                    tabs: [
                      Tab(
                        child: Text(
                          'My Responses',
                          style: TextStyle(fontWeight: FontWeight.bold),

                        ),
                      ),
                      Tab(
                        child: Text(
                          'My Properties',
                          style: TextStyle(fontWeight: FontWeight.bold),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                TabResponse(),
                TabMyproperties(),

                ///SecondScreen(),
              ],
            ),
          ),
        ));
  }
}
