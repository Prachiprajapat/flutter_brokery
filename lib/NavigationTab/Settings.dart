import 'package:flutter/material.dart';
import 'package:share/share.dart';



class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _s ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffd40000),
          title: Text(
            'Settings',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 10),
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personalize',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon((Icons.notification_important_outlined),
                              color: Colors.grey,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Manage Notification',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/Notification');
                        },
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.vpn_key_outlined, color: Colors.grey,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Change Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ChangePassword');
                        },
                      ),

                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.history, color: Colors.grey,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Clear History',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18),
                            ),
                          ],

                        ),
                        onTap: () {
                          showAlertDialog(context);
                        },
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border_outlined, color: Colors
                              .grey,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Clear Favorites',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Information & Support',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        child: Row(

                          children: [
                            Icon(Icons.feedback_outlined, color: Colors.grey,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Terms and Condition',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        onTap: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                color: Colors.amber,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Modal BottomSheet'),
                                      ElevatedButton(
                                        child: const Text('Close BottomSheet'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );


                        },
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.policy_outlined, color: Colors.grey,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.info_outline_rounded, color: Colors.grey,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'MagicBricks Version 9.2.5.1',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.contact_phone_outlined, color: Colors
                              .grey,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Contact Us',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.share_outlined, color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text(
                              'Share the App',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        onTap: (){
                          final String url = "https://play.google.com/store/apps/details?id=com.timesgroup.magicbricks";
                          final RenderBox box = context.findRenderObject();
                          Share.share(url,sharePositionOrigin: box.localToGlobal(Offset.zero)&box.size);
                        },
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget OkButton = FlatButton(
      child: Text("Ok"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );


    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Clear History"),

      content: Container(
        height: 150,
        width: 100,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                new Text('Clear Property History'),
                new Checkbox(
                  value: _s,
                  onChanged: (bool newValue) {
                    setState(() {
                      _s = newValue;
                    });
                  },
                ),

              ],
            ),
            Row(
              children: [
                new Text('Clear agent History'),
                new Checkbox(
                  value: _s,
                  onChanged: (bool newValue) {
                    setState(() {
                      _s = newValue;
                    });
                  },
                ),

              ],
            ),
            Row(
              children: [
                new Text('Clear Project History '),
                new Checkbox(
                  value: _s,
                  onChanged: (bool newValue) {
                    setState(() {
                      _s = newValue;
                    });
                  },
                ),

              ],
            ),
          ],
        ),
      ),
      actions: [
        OkButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}
