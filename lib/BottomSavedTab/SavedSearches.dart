import 'package:flutter/material.dart';

class SavedSearches extends StatefulWidget {
  @override
  _SavedSearchesState createState() => _SavedSearchesState();
}

class _SavedSearchesState extends State<SavedSearches> {
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
                      image: AssetImage('assets/images/search.png'),
                    )),
              ),
              Text(
                'No saved search yet',
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
                      'You have  not viewed any agent yet.Start searching for agent',
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
