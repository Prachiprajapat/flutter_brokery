
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabRequirment extends StatefulWidget {
  @override
  _TabRequirmentState createState() => _TabRequirmentState();
}

class _TabRequirmentState extends State<TabRequirment> {
  Widget _myListView(BuildContext context) {
    // backing data
    final europeanCountries = [
      'Albania',
      'Andorra',
      'Armenia',
      'Austria',
      'Azerbaijan'
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: europeanCountries.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 50,

          child: Column(

            children: [
              Icon(Icons.copy),
              Text(europeanCountries[index]),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: (
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(top: 10,left: 20),
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Which State are you at?',style: TextStyle(color: Colors.grey,fontSize: 16),),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 5, left: 5),
                        height: 45,
                        child: TextFormField(

                          decoration: InputDecoration(
                            suffixIcon: new Icon(Icons.keyboard_arrow_down_outlined),

                            hintText: "City ,Location",
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Enter Project/Society or Locality',style: TextStyle(color: Colors.grey,fontSize: 16),),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 5, left: 5),
                        height: 45,
                        child: TextFormField(

                          decoration: InputDecoration(
                            suffixIcon: new Icon(Icons.location_searching),

                            hintText: "City ,Location",
                            contentPadding: EdgeInsets.all(5),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              'PROPERTY TYPE',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20,right: 5),
                        padding: EdgeInsets.all(5),
                        child: _myListView(context),
                        height: 200,
                        width: double.infinity,
                      ),

                      Card(
                        margin: const EdgeInsets.only( left: 10, right: 10),
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Wrap(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('1BHK')),
                                    ),
                                    Container(
                                      height: 30,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('2 BHK')),
                                    ),
                                    Container(
                                      height: 30,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('3 BHK')),
                                    ),
                                    Container(
                                      height: 30,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('4 BHK')),
                                    ),
                                    Container(
                                      height: 30,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('5 BHK')),
                                    ),
                                    Container(
                                      height: 30,
                                      child: VerticalDivider(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      color: Colors.white,
                                      child: Center(child: Text('6 BHK')),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),


                    ],



                  ),


              ),

            ],
          )
          ),
        ),
              ),
    );
  }
}
