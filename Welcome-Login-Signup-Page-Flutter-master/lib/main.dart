import 'package:flutter/material.dart';
import 'package:flutter_auth/RunOtpView.dart';
import 'package:flutter_auth/Screens/LandLordDashbord/landlorddash.dart';
import 'package:flutter_auth/Screens/TenantHomePage/TenantHomePage.dart';
import 'package:flutter_auth/buttombar.dart';
import 'package:flutter_auth/calculator.dart';

import 'package:flutter_auth/constants.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Screens/LandLordDashbord/components/padding_posts/view_property.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'calculatorRun.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Screen(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:RunOptView(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        seconds:1,
        backgroundColor: Colors.green[200],
        loaderColor:Colors.black,
        photoSize:200.0,
        image: Image.asset('assets/images/logo.png'),
        navigateAfterSeconds:MyApp() ,// to run seperate screen
      ),
    );
  }
}

