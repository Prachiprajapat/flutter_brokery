import 'package:flutter/material.dart';
import 'package:flutter_brokery/Profile/AboutMe.dart';
import 'package:flutter_brokery/Profile/MyContactDetails.dart';
import 'package:flutter_brokery/Profile/TabMyActivity.dart';
import 'package:flutter_brokery/Profile/Tab_Mypreference.dart';

import 'TabRequirment.dart';

class MyRequirenment extends StatefulWidget {
  @override
  _MyRequirenmentState createState() => _MyRequirenmentState();
}

class _MyRequirenmentState extends State<MyRequirenment> {
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
          length: 5,
          child: Scaffold(
            appBar: AppBar(

              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: Color(0xffd40000),
              title: Text('Completion Score%'),
              bottom: PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: Container(
                  color: Color(0xffd40000),
                  child: TabBar(

                    indicatorColor: Color(0xffd40000),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),


                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          'REQUIREMENT',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'MY PREFERENCES',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'MY ACTIVITY',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'ABOUT ME',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'MY CONTACT DETAILS',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                TabRequirment(),
                TabMyPreference(),
                TabMyActivity(),
                AboutMe(),
                MyContactDetails(),



                ///SecondScreen(),
              ],
            ),
          ),
        ));
  }
}
