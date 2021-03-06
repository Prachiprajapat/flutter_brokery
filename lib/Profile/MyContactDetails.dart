import 'package:flutter/material.dart';

class MyContactDetails extends StatefulWidget {
  @override
  _MyContactDetailsState createState() => _MyContactDetailsState();
}

class _MyContactDetailsState extends State<MyContactDetails> {
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
                    Text('Name',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(

                    hintText: "Enter Name",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Email',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(

                    hintText: "prachi@gmail.com",
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Text('Phone Number',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 40,
                child: TextFormField(

                  decoration: InputDecoration(

                    hintText: "Phone Number",
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
