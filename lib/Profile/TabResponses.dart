import 'package:flutter/material.dart';

class TabResponse extends StatefulWidget {
  @override
  _TabResponseState createState() => _TabResponseState();
}

class _TabResponseState extends State<TabResponse> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('No data found',style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}
