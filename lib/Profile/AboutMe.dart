import 'package:flutter/material.dart';
class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
                    Text('Nature of Employment',
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

                    hintText: "Add Employment type",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Reason for buying',
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

                    hintText: "Add Advertiser",
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
                      child: Center(child: Text('Proceed',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
