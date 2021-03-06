import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_brokery/Screens/bottomsearch.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'dart:convert';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  var _url="https://blog.mindorks.com";
  var isAndroid;
  static const String kNavigationExamplePage = '''
<!DOCTYPE html><html>
<head><title>Navigation Delegate Example</title></head>
<body>
<p>
The navigation delegate is set to block navigation to the youtube website.
</p>
<ul>
<ul><a href="https://www.youtube.com/">https://www.youtube.com/</a></ul>
<ul><a href="https://www.google.com/">https://www.google.com/</a></ul>
</ul>
</body>
</html>
''';


  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  // WebViewController _controller;


  WebViewController _myController;
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();





  static const List<Widget>   _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
  ];
  void initState() {
    super.initState();
    // if (Platform.isAndroid) {
    //   WebView.platform = SurfaceAndroidWebView();
    // }
  }

  void _onItemTapped(int index) {
    setState(()
        {
          _selectedIndex = index;
          switch(_selectedIndex){
        case(0):{
          break;
        }
            case(1):
              {
                Navigator.pushNamed(context, '/bottomsearch');
                break;
              }
            case(2):{
              Navigator.pushNamed(context, '/Bottomsaved');
              break;
            }
            case(3):{
              Navigator.pushNamed(context, '/profile');
              break;
            }
            case(4):{
              Navigator.pushNamed(context, '/BottomAlert');
              break;
            }
      }
      print(_selectedIndex);
      //Navigator.pushNamed(context, '/profile');
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomSearch()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:
      SafeArea(

          child: Scaffold(
            key: _key,

            backgroundColor: Color(0xffd6d4ce),
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
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                    ),

                    title: Text(
                      'magicbricks',
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
                        borderRadius: BorderRadius.circular(20)),
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
              preferredSize: Size(double.infinity, 110.0),
            ),

            drawer: new Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  new SizedBox(
                    height: 60.0,
                    child: new DrawerHeader(
                        child: new Text('Hello User !',
                            style: TextStyle(color: Colors.white)),
                        decoration: new BoxDecoration(color: Color(0xffd40000)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.all(15)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      setState(() {
                        _key.currentState.openEndDrawer();

                        //Navigator.of(context).pop();

                      });
                    },

                    // Update the state of the app.
                    // ...

                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home_work_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Properties for Buy',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Bottomsaved');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Properties for Rent ',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Bottomsaved');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.water_damage_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'New Projects',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Explore Localities',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Explorecity');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Properties on Auction',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Sell/Rent your Property',
                          textAlign: TextAlign.start,
                          style:
                        TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ), //here is a divider
                  ListTile(
                    leading: Icon(
                      Icons.location_searching,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Post Property',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Postproperty');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.leave_bags_at_home_sharp,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Advertise with Us',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Advertisewithus');

                      // Update the state of the app.
                      // ...
                    },
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Home Loans',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ), //here is a divider

                  ListTile(
                    leading: Icon(
                      Icons.home_work_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Home Loans',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {


                      WebView(
                        initialUrl: 'https://en.wikipedia.org/wiki/Kraken',
                        onWebViewCreated: (WebViewController webViewController) {
                          _controller.complete(webViewController);
                        });
                      //WebView(initialUrl: 'https://panel.islamlive.app',);


                      //WebView
                      // (
                      //   initialUrl: 'https://flutter.dev',
                      //   javascriptMode: JavascriptMode.unrestricted,
                      //   onWebViewCreated: (WebViewController webViewController) {
                      //     _controller.complete(webViewController);
                      //   },
                      // );


                      // WebView(
                      //   initialUrl: 'https://blog.mindorks.com',
                      //   onWebViewCreated: (WebViewController webViewController) {
                      //     _controller = webViewController;
                      //   },
                      // );
//...After some operations:
                      //_controller.loadUrl('https://mindorks.com');                   // _controller.loadUrl("https://www.google.com/search?q=flutter+image&oq=flutter+image&aqs=chrome..69i57j0l4j69i60l3.3184j0j7&sourceid=chrome&ie=UTF-8");
                      // Update the state of the app.
                      // ...
                    },
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Property Services',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ), //here is a divider
                  ListTile(
                    leading: Icon(
                      Icons.payment_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Pay Rent',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark_border_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Rent Agreement',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.cleaning_services_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Home Cleaning',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.sanitizer_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Sanitizing',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.pest_control_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Pest Control',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.access_time_rounded,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Vastu',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.search_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Property Inspection',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.verified_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Tenant Verification',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.format_indent_decrease_rounded,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Design & Decor ',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Tools & Advice',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),


                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.speaker_group_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Propworth',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.monetization_on_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Rates & Trends',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/RatesandTrends');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.forum_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Forum',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Forum');

                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.calculate_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'EMI Calculator',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.font_download_sharp,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Loan Eligibility',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.library_books_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Propindex',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('Expert Service',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.add_business_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Property Valuation',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.linear_scale_sharp,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Advocate on Call',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.paste,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Property Astrology',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),

                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('News',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.wallpaper,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Property News',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home_work_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Smart Cities',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.business,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Industry Buzz',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.text_fields_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Legal & Taxation',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.house_siding_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Affordable Housing',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.house_siding_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Affordable Housing',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.pink[50],
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('We Listen',
                          textAlign: TextAlign.start,
                          style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16,),
                        ),
                      ],
                    ),
                  ),

                  // Divider(
                  //   color: Colors.grey,
                  //   thickness: 2,
                  // ),

                  ListTile(
                    leading: Icon(
                      Icons.feedback_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Feedback',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_rate_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Rate Us',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.share,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Share',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_alert_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Set Alerts',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_applications_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Settings');


                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.login_outlined,
                      color: Color(0xffd40000),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    onTap: () {
                      showAlertDialog(context);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),


                  Container(
                    height: 70,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        children: [
                          Container (
                            margin:EdgeInsets.only(top: 12,left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Help'),
                                Text('Answer to all your queries'),
                              ],
                            ),
                          ),
                          Container (
                            margin: EdgeInsets.only(left: 100),
                              child: Icon(Icons.arrow_forward_ios_rounded,size: 15,))
                        ],
                      ),
                    ),
                  )

                  //here is a divider
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image:
                                AssetImage('assets/images/debitcredit.jpg')),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 130,
                          margin: EdgeInsets.only(left: 195, top: 90),
                          decoration: new BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [
                                  const Color(0xffd40000),
                                  const Color(0xFFB5004E),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),

                          child: Center(child: Text('Pay rent now',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),)),
                        )
                      ],
                    ),
                  ),
                  Container
                    (
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    height: 190,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            'Tools to help You Decide Better',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,

                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 350,

                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(left: 5),
                                      padding: EdgeInsets.all(5),
                                      color: Color(0xffe3e2de),
                                      child: Icon(Icons.house_siding_outlined,
                                        color: Color(0xffd40000),),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 200,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Text(
                                                  'Propworth',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .normal,
                                                      color: Colors.black87,

                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Text(
                                                    'Get the Value of Any Property',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .normal,
                                                        color: Colors.black87,
                                                        fontSize: 12)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 30,
                                      margin: EdgeInsets.only(
                                          top: 15, left: 20),
                                      alignment: Alignment.center,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Icon(Icons
                                                .arrow_forward_ios_rounded),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Container(
                                height: 60,
                                width: 350,
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(left: 5),
                                      padding: EdgeInsets.all(5),
                                      color: Color(0xffe3e2de),
                                      child: Icon(Icons.calculate_outlined,
                                        color: Color(0xffd40000),),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 200,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Calculation',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .normal,
                                                      color: Colors.black87,

                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),

                                                Text(
                                                    'Smart Calculators for you',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .normal,
                                                        color: Colors.black87,
                                                        fontSize: 12)),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 30,
                                      margin: EdgeInsets.only(
                                          top: 15, left: 20),
                                      alignment: Alignment.center,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Icon(Icons
                                                .arrow_forward_ios_rounded),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                    'assets/images/property.jpeg')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined, color: Colors.black87, size: 25,),
                      title: Text(
                        'Home', style: TextStyle(color: Colors.black87),),
                      backgroundColor: Colors.white
                  ),


                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search, color: Colors.black87, size: 25,),
                      title: Text(
                        'Search', style: TextStyle(color: Colors.black87),),
                      backgroundColor: Colors.white
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.save_alt, color: Colors.black87, size: 25,),
                    title: Text(
                      'Saved', style: TextStyle(color: Colors.black87),),
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.black87, size: 25,),
                    title: Text(
                      'Profile', style: TextStyle(color: Colors.black87),),
                    backgroundColor: Colors.white,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_alert_outlined, color: Colors.black87,
                      size: 25,),
                    title: Text(
                      'Alerts', style: TextStyle(color: Colors.black87),),
                    backgroundColor: Colors.white,
                  ),
                ],
                type: BottomNavigationBarType.shifting,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                iconSize: 40,
                onTap: _onItemTapped,
                elevation: 5
            ),
          )

      ),
    );
  }

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget cancelButton = FlatButton(
      child: Text("Submit"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );


    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Sign Out"),
      content: Text("Are you sure ?"),
      actions: [
        okButton,
        cancelButton,
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
