import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Stack(
            children: [
              AppBar(
                // backgroundColor: Color(0xffd40000),
                flexibleSpace: Container(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xffd40000),
                          const Color(0xFFB5004E),
                        ],
                        begin:  Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                ),

                title: Text(
                  'Magicbricks Forum'
                      '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: CupertinoSearchTextField(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                ),
              )
            ],
          ),
          preferredSize: Size(double.infinity, 110.0),
        ),

      ),
    );
  }
}
