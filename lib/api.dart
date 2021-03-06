import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

Future<SignupResponse> createLoginState(String username, String number, String password) async {
  final http.Response response = await http.post(
      'http://thenursingapp.com/welcome/registration',
      headers: <String, String>{
        'Accept': 'application/json',
      },
      body: {
        'fullname': username,
        'ContactNumber': number,
        'password':password,
      });
  if (response.statusCode == 200) {
    print(response.body);

    // Navigator.pushReplacement(
    //     context,
    //     new MaterialPageRoute(
    //         builder: (BuildContext context) => new HomePage()));
    return SignupResponse.fromJson(json.decode(response.body)

        );

  } else {
    throw Exception('Failed to create album.');
  }
}

class SignupResponse {
  String token;
  String userEmail;
  String userNicename;
  String contactnumber;

  SignupResponse(
      {this.token, this.userEmail, this.userNicename, this.contactnumber});

  SignupResponse.fromJson(Map<String, dynamic> json)  {
    token = json['token'];
    userEmail = json['user_email'];
    userNicename = json['fullname'];
    contactnumber = json['ContactNumber'];





  }
}