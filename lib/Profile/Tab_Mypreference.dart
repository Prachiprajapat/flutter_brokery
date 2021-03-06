import 'package:flutter/material.dart';

class TabMyPreference extends StatefulWidget {
  @override
  _TabMyPreferenceState createState() => _TabMyPreferenceState();
}

class _TabMyPreferenceState extends State<TabMyPreference> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Need Possession',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                    hintText: "Add Possession preference",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Transaction Type',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                    hintText: "Add Transaction type preference",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Age of Construction',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                    hintText: "Add Construction Age Preference",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text(' Direction Preference',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                    hintText: "Add Direction Preference",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Floor Preference',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                    hintText: "Add Floor preference",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),

              Container(
                height: 50,
                margin: EdgeInsets.only(left: 150,top: 20),


                width: double.infinity,
                child: Row(
                  children: [
                    Text('SAVE & EXIT'),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 45,
                      width: 100,
                      color: Colors.red,
                      child: Center(child: Text('Proceed')),
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
