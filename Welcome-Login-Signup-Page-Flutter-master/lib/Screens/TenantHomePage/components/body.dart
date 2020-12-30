import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/ButtomBarRun.dart';
import 'package:flutter_auth/Screens/AdminDashbord/admindash.dart';

import 'package:flutter_auth/Screens/AdminDashbord/components/background.dart';
import 'package:flutter_auth/Screens/LandLordDashbord/landlorddash.dart';
import 'package:flutter_auth/Screens/TenantHomePage/ViewPropertRun.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import '../../../buttombar.dart';
import '../../../constants.dart';
import 'appbarstatus.dart';

// import '../../constants.dart';
class Body extends StatelessWidget {

  tapped(int tappedIndex) {
  //setState(() {index = tappedIndex;});
  }

  int currentIndex = 0;
  int index = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  int onTabTapped() {

      return currentIndex++ ;

  }
  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title: const Text('Properties'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                   // scaffoldKey.currentState.showSnackBar(snackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AdminDash();
                        },
                      ),
                    );
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Next page',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AdminDash();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),

            //SizedBox(height: size.height * 0.04),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset('assets/images/pic.jpg'),
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Property 1'),
                    subtitle: Text(
                      'House of 5 mrla',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color:kPrimaryColor)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ViewPropertyRun();
                                },
                              ),
                            );
                          },
                          color: kPrimaryColor,
                          textColor: Colors.white,
                          child: Text("View".toUpperCase(),
                              style: TextStyle(fontSize: 14),),
                          focusColor: Colors.black,
                        ),
                        // child: RoundedButton(
                        //   text: "View",
                        //   color: kPrimaryLightColor,
                        //   textColor: Colors.black,
                        //   press: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) {
                        //           return ViewProperty();
                        //         },
                        //       ),
                        //     );
                        //   },
                        // ),

                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text(''),
                      ),
                    ],
                  ),
                  // Image.asset('assets/images/logo.png'),
                ],
              ),
            ),

            SizedBox(height: size.height * 0.05),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 1'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 2'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 1'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('ACTION 2'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title 1'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),

          ],
        ),
      ),
    ],
    ),
    )
    );
  }
}
class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}















