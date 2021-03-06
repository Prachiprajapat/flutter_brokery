import 'package:flutter/material.dart';

class Explorecity extends StatefulWidget {
  @override
  _ExplorecityState createState() => _ExplorecityState();
}

class _ExplorecityState extends State<Explorecity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Color(0xffd40000),
            title: Text('Localities',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  height: 45,
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextFormField(

                    decoration: InputDecoration(
                      suffixIcon: new Icon(Icons.location_searching),

                      hintText: "City ,Location",
                        contentPadding: EdgeInsets.all(5),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  decoration: BoxDecoration(color: Color(0xffd40000)
                  ),
                  child: Center(child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),

              ],
            ),

          ),
        ));
  }
}
