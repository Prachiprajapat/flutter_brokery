import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_brokery/Screens/Bottom_notification.dart';
import 'package:flutter_brokery/Screens/Bottomsaved.dart';
import 'package:flutter_brokery/Screens/HomeScreen.dart';
import 'package:flutter_brokery/Screens/LoginScreen.dart';
import 'package:flutter_brokery/Screens/Profile.dart';
import 'package:flutter_brokery/Screens/SignupScreen.dart';
import 'package:flutter_brokery/Screens/SplashScreen.dart';
import 'package:flutter_brokery/Screens/bottomsearch.dart';
import 'package:flutter_brokery/Screens/verificationcodescreen.dart';

import 'NavigationTab/Adevertisewithus.dart';
import 'NavigationTab/ExploreCities.dart';
import 'NavigationTab/Forum.dart';
import 'NavigationTab/PostProperty.dart';
import 'NavigationTab/RatesandTrends.dart';
import 'NavigationTab/Settings.dart';
import 'Profile/AboutMe.dart';
import 'Profile/MyContactDetails.dart';
import 'Profile/MyRequirenments.dart';
import 'Profile/MyResponsbility.dart';
import 'Profile/TabMyActivity.dart';
import 'Profile/Tab_Mypreference.dart';
import 'Settings/ChangePassword.dart';
import 'Settings/NotificationAlert.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        initialRoute: '/splash', routes: {
          '/splash': (context) => splash(),
           '/login': (context) => LoginScreen(),
          '/signup': (context) => SignupScreen(),
          '/verification': (context) => Verification(),
          '/homescreen': (context) => HomeScreen(),
          '/bottomsearch': (context) => BottomSearch(),
          '/profile': (context) => Profile(),
          '/Bottomsaved': (context) => BottomSaved(),
          '/BottomAlert': (context) => BottomAlert(),
          '/MyResponsibility': (context) => MyResponsibility(),
          '/Explorecity': (context) => Explorecity(),
          '/Postproperty': (context) => Postproperty(),
          '/Advertisewithus': (context) => Advertisewithus(),
          '/RatesandTrends': (context) => RatesandTrends(),
          '/Forum': (context) => Forum(),
          '/Settings': (context) => Settings(),
          '/ChangePassword': (context) => ChangePassword(),
          '/Notification': (context) => NotificationAlert(),
          '/MyRequirenment': (context) => MyRequirenment(),
          '/TabMyPreference': (context) => TabMyPreference(),
          '/TabMyActivity': (context) => TabMyActivity(),
          '/AboutMe': (context) => AboutMe(),
          '/MyContactDetails': (context) => MyContactDetails(),




        }

    );
  }
}
