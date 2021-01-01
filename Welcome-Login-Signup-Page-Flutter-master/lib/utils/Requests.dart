import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_auth/utils/dto/signup_response.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';



class Requests{
  static String baseUrl='https://maihommanager.com';
  static Future<SignUpResponse> registerUser(String userName,String email, String password,String phoneNo,String category,BuildContext context) async {
    showLoaderDialog(context,"Signing...");
    var  body=jsonEncode(<String, dynamic>{
      "userName":userName,
      "email":email,
      "phoneNo":phoneNo,
      "password":password,
      "category":category
    });
    final http.Response response = await http.post(Requests.baseUrl+'/api/registerUser',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:body
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      Navigator.pop(context);
      if(json.decode(response.body)['error']==null) {
        return SignUpResponse.fromJson(json.decode(response.body));
      }
      Fluttertoast.showToast(
          msg: "Signing Failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      return null;
    } else {
      Navigator.pop(context);
      return null;
      //throw Exception('Login Failed');
    }
  }

  static Future<SignUpResponse> doLogin(String email,String password,BuildContext context) async {
    showLoaderDialog(context,"Logging...");
    var  body=jsonEncode(<String, dynamic>{
      "email":email,
      "password":password
    });
    final http.Response response = await http.post(Requests.baseUrl+'/api/LoginUser',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:body
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      Navigator.pop(context);
      if(json.decode(response.body)['error']==null) {
        return SignUpResponse.fromJson(json.decode(response.body));
      }

        return null;
    } else {
      Navigator.pop(context);
      return null;
      //throw Exception('Login Failed');
    }
  }


  static Future<SignUpResponse> verifyAccount(String email,String password,BuildContext context) async {
    showLoaderDialog(context,"Logging...");
    var  body=jsonEncode(<String, dynamic>{
      "email":email,
      "password":password
    });
    final http.Response response = await http.post(Requests.baseUrl+'/api/LoginUser',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:body
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      Navigator.pop(context);
      if(json.decode(response.body)['error']==null) {
        return SignUpResponse.fromJson(json.decode(response.body));
      }

      return null;
    } else {
      Navigator.pop(context);
      return null;
      //throw Exception('Login Failed');
    }
  }



  static showLoaderDialog(BuildContext context,String message) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 7),
              child: Text(message,style: TextStyle(fontSize: 12),)),
        ],),
    );
    showDialog(barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}