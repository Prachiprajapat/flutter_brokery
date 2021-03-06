import 'package:flutter/material.dart';
class Postproperty extends StatefulWidget {
  @override
  _PostpropertyState createState() => _PostpropertyState();
}

class _PostpropertyState extends State<Postproperty> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: PreferredSize(
        child: Stack(
          children: [
            AppBar(
               backgroundColor: Colors.transparent,
              flexibleSpace: Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/whitehouse.png"),

              )


            // decoration: new BoxDecoration(
                //   gradient: new LinearGradient(
                //       colors: [
                //         const Color(0xffd40000),
                //         const Color(0xFFB5004E),
                //       ],
                //       begin:  Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //       stops: [0.0, 1.0],
                //       tileMode: TileMode.clamp),
                // ),
              ),

            ),
            )
          ],

        ),
        preferredSize: Size(double.infinity, 150.0),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               margin: EdgeInsets.only(top: 20,left: 20),
               child:
               Text('Sell or Rent',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 24),),
             ),
             Container(
               margin: EdgeInsets.only(top: 10,left: 20),
               child:
               Text('Your Property',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 24),),
             ),
             Container(
               margin: EdgeInsets.only(top: 10,left: 20),
               child:
               Text('We have over 15 Lac buyers and tenants for you',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 20),),
             ),
             Container(
               margin: EdgeInsets.only(top: 40,left: 20),
               child:
               Text('You are posting this property for rs 5000',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 18),),
             ),
             Container(
               margin: EdgeInsets.only(top: 10,left: 20),
               child:
               Text('Free Professional Photoshoot',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 16),),
             ),
             Container(
               margin: EdgeInsets.only(top: 10,left: 20),
               child:
               Text('Get Contact Details  of upto 5 Responses',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 16),),
             ),
             Container(
               margin: EdgeInsets.only(top: 10,left: 20),
               child:
               Text('We have over 15 Lac buyers and tenants for you',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 16),),
             ),
           ],
        ),
      ),

    )
    );
  }
}
