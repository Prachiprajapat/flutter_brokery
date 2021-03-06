
import 'package:flutter/material.dart';
import 'package:flutter_brokery/BottomSavedTab/Contacted.dart';
import 'package:flutter_brokery/BottomSavedTab/LastViewed.dart';
import 'package:flutter_brokery/BottomSavedTab/SavedSearches.dart';
import 'package:flutter_brokery/BottomSavedTab/ScheduledTours.dart';
import 'package:flutter_brokery/BottomSavedTab/Shortlisted.dart';

class BottomSaved extends StatefulWidget {
  @override
  _BottomSavedState createState() => _BottomSavedState();
}

class _BottomSavedState extends State<BottomSaved> {
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
              title: Text('My Activity'),
              bottom: PreferredSize(
                preferredSize: Size(double.infinity, 50),
                child: Container(
                  color: Colors.white,
                  child: TabBar(

                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),




                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          'Contacted',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Shortlisted',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Last Viewed',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Saved Searches',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Scheduled Tours',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Contacted(),
                Shortlisted(),
                LastViewed(),
                SavedSearches(),
                ScheduledTours(),

                ///SecondScreen(),
              ],
            ),
          ),
        ));
  }
}
