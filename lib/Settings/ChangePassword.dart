import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffd40000),
            title: Text('Change Password',style: TextStyle(color: Colors.white),),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Current Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password'
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('New Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password'
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Confirm Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password'
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                           Container(
                             height: 50,
                             width: double.infinity,
                             color: Colors.red,
                             child: Center(child: Text('SAVE CHANGES',style: TextStyle(color: Colors.white),)),

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
