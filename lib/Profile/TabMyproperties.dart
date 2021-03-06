import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TabMyproperties extends StatefulWidget {
  @override
  _TabMypropertiesState createState() => _TabMypropertiesState();
}

class _TabMypropertiesState extends State<TabMyproperties> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Container(
        color: Color(0xffebf2f1),
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Card(

                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Center(child: Icon(Icons.list)),

                ),
              ),
              Card(

                child: Container(
                  height: 50,
                  width: 130,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2)),
                    child: CupertinoSearchTextField(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2)),
                    ),



                ),
              ),
              Card(

                child: Container(
                  height: 50,
                  width: 145,
                  color: Colors.white,
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Active"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Under Screening"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text("Rejected"), value: 3),
                        DropdownMenuItem(child: Text("Expired"), value: 4),
                        DropdownMenuItem(child: Text("All Properties"), value: 5),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),

                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
