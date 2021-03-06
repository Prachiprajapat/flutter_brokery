import 'package:flutter/material.dart';

class Contacted extends StatefulWidget {
  @override
  _ContactedState createState() => _ContactedState();
}

class _ContactedState extends State<Contacted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.red[500],
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Properties',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.red[500],
                        ),
                      ),
                      child: Center(child: Text('Agents',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                color: Colors.white,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 160),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/house.jpg'),
                      )),
                    ),
                    Text(
                      'No Contacted property yet',
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
                        'You have  not contacted for any property yet start searching for properties to contact',
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
            ],
          ),
        ),
      ),
    );
  }
}
