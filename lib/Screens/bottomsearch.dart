import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomSearch extends StatefulWidget {
  @override
  _BottomSearchState createState() => _BottomSearchState();
}

class _BottomSearchState extends State<BottomSearch> {
  int _value = 1;

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
        child: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              // Here we take the value from the MyHomePage object that
              // was created by the App.build method, and use it to set
              // our appbar title.
              title: new Text(
                'filter',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              leading: GestureDetector(
                onTap: () {},
                child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              actions: [
                Text(
                  'Reset',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red),
                )
              ],
            ),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                shape: new RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.circular(4.0)),
                margin: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 40,
                      color: Colors.white,
                      child: Center(child: Text('BUY')),
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
                      width: 60,
                      color: Colors.white,
                      child: Center(child: Text('RENT')),
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
                      width: 40,
                      color: Colors.white,
                      child: Center(child: Text('PG')),
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
                      width: 90,
                      color: Colors.white,
                      child: Center(child: Text('COMMERCIAL')),
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
                      width: 80,
                      color: Colors.white,
                      child: Center(child: Text('PROJECT')),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text('Locality/Project/Landmark'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Search City'),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_searching, color: Color(0xffd40000)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search Near Me',
                      style: TextStyle(color: Color(0xffd40000)),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Budget')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 10, top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey, width: 1)),
                    padding: EdgeInsets.all(2.0),
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("₹ Min"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("₹ 5 Lac"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("₹ 10 Lac"), value: 3),
                          DropdownMenuItem(child: Text("₹ 20 Lac"), value: 4),
                          DropdownMenuItem(child: Text("₹ 30 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 40 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 50 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 60 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 70 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 80 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 90 Lac"), value: 5),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(left: 10, top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey, width: 1)),
                    padding: EdgeInsets.all(2.0),
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("₹ Mix"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("₹ 5 Lac"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("₹ 10 Lac"), value: 3),
                          DropdownMenuItem(child: Text("₹ 20 Lac"), value: 4),
                          DropdownMenuItem(child: Text("₹ 30 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 40 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 50 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 60 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 70 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 80 Lac"), value: 5),
                          DropdownMenuItem(child: Text("₹ 90 Lac"), value: 5),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 5),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Property Type',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),

                  ],
                ),
              ),



                  Container(
                    child: _myListView(context),
                    height: 200,
                    width: double.infinity,
                  ),

                  // SingleChildScrollView(
              //   child: Row(
              //     // This next line does the trick.
              //     children: <Widget>[
              //       Card(
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 100.0,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                 image: AssetImage('assets/images/alert.jpg'),
              //               )),
              //             ),
              //             Text('House'),
              //           ],
              //         ),
              //       ),
              //       Card(
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 100.0,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                 image: AssetImage('assets/images/alert.jpg'),
              //               )),
              //             ),
              //             Text('House'),
              //           ],
              //         ),
              //       ),
              //       Card(
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 100.0,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                 image: AssetImage('assets/images/alert.jpg'),
              //               )),
              //             ),
              //             Text('House'),
              //           ],
              //         ),
              //       ),
              //       Card(
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 100.0,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                 image: AssetImage('assets/images/alert.jpg'),
              //               )),
              //             ),
              //             Text('House'),
              //           ],
              //         ),
              //       ),
              //       Card(
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 100.0,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                 image: AssetImage('assets/images/alert.jpg'),
              //               )),
              //             ),
              //             Text('House'),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              //   scrollDirection: Axis.horizontal,
              // ),
              // Container(
              //     margin: EdgeInsets.only(top: 10, left: 10),
              //     padding: EdgeInsets.all(5),
              //     child: Text(
              //       'Bedrooms',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //           fontSize: 16),
              //     )),
              // Card(
              //   margin: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
              //   child: Padding(
              //       padding: const EdgeInsets.all(5.0),
              //       child: Wrap(
              //         children: <Widget>[
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: <Widget>[
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('1BHK')),
              //               ),
              //               Container(
              //                 height: 30,
              //                 child: VerticalDivider(
              //                   color: Colors.grey,
              //                   width: 0.5,
              //                 ),
              //               ),
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('2 BHK')),
              //               ),
              //               Container(
              //                 height: 30,
              //                 child: VerticalDivider(
              //                   color: Colors.grey,
              //                   width: 0.5,
              //                 ),
              //               ),
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('3 BHK')),
              //               ),
              //               Container(
              //                 height: 30,
              //                 child: VerticalDivider(
              //                   color: Colors.grey,
              //                   width: 0.5,
              //                 ),
              //               ),
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('4 BHK')),
              //               ),
              //               Container(
              //                 height: 30,
              //                 child: VerticalDivider(
              //                   color: Colors.grey,
              //                   width: 0.5,
              //                 ),
              //               ),
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('5 BHK')),
              //               ),
              //               Container(
              //                 height: 30,
              //                 child: VerticalDivider(
              //                   color: Colors.grey,
              //                   width: 0.5,
              //                 ),
              //               ),
              //               Container(
              //                 height: 30,
              //                 width: 50,
              //                 color: Colors.white,
              //                 child: Center(child: Text('6 BHK')),
              //               ),
              //             ],
              //           ),
              //         ],
              //       )),
              // ),
              // Container(
              //   color: Colors.red,
              //   alignment: Alignment.center,
              //   margin: EdgeInsets.only(top: 20),
              //   child: FlatButton(
              //     color: Colors.red,
              //     child: Text(
              //       'Search',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // )
            ])));
  }
}
