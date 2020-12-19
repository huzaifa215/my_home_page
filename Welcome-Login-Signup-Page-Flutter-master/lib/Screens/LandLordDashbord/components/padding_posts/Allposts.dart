import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/AdminDashbord/admindash.dart';

import 'package:flutter_auth/Screens/AdminDashbord/components/background.dart';
import 'package:flutter_auth/Screens/LandLordDashbord/ViewPostScreen.dart';
import 'package:flutter_auth/Screens/TenantHomePage/ViewPropertRun.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import '../../../../constants.dart';
// import '../../constants.dart';
class AllPost extends StatelessWidget {
  @override
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            AppBar(
              title: const Text('Pendding Posts'),
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
                                  return ViewPostScreen();
                                },
                              ),
                            );
                          },
                          color: kPrimaryColor,
                          textColor: Colors.white,
                          child: Text("Edit".toUpperCase(),
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
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color:kPrimaryColor)),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return ViewPropertyRun();
                            //     },
                            //   ),
                            // );
                          },
                          color: kPrimaryColor,
                          textColor: Colors.white,
                          child: Text("Delete".toUpperCase(),
                            style: TextStyle(fontSize: 14),),
                          focusColor: Colors.black,
                        ),
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
            // RoundedButton(
            //   text: "All Post",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            //   // press: () {
            //   //  AdminDash();
            //   // },
            // ),
            // SizedBox(height: size.height * 0.04),
            // RoundedButton(
            //   text: "Pandding Posts",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            //   // press: () {
            //   //  AdminDash();
            //   // },
            //
            // ),
            // SizedBox(height: size.height * 0.04),
            // RoundedButton(
            //   text: "",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            // press: () {
            //  AdminDash();
            // },

            // ),
            // SizedBox(height: size.height * 0.04),
            // RoundedButton(
            //   text: "LandLords",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            // press: () {
            //  AdminDash();
            // },

            // ),


            // press: () {
            //  AdminDash();
            // },
            // Card(
            // child: Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     const ListTile(
            //       leading: Icon(Icons.album, size: 50),
            //       title: Text(''),
            //       subtitle: Text('TWICE'),

            //       ),
            //     ],
            //   ),
            // ),

            // SizedBox(height: size.height * 0.09),
            // Text(
            //   "ADMIN SIGNUP",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: size.height * 0.01),
            // // SvgPicture.asset(
            // //   "assets/icons/signup.svg",
            // //   height: size.height * 0.35,
            // // ),
            // Image(
            //     image:AssetImage('assets/images/logo.png')
            // ),
            // SizedBox(height: size.height * 0.02),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     // admin dashbord
            //     RoundedButtonDashbord(
            //       text: "Admin",
            //       color: kPrimaryLightColor,
            //       textColor: Colors.black,
            //       press: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) {
            //               return AdminSignUp();
            //             },
            //           ),
            //         );
            //       },
            //     ),
            //     RoundedButtonDashbord(
            //       text: "Tenant",
            //       color: kPrimaryLightColor,
            //       textColor: Colors.black,
            //       press: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) {
            //               return TenantSignUp();
            //             },
            //           ),
            //         );
            //       },
            //     ),
            //
            //     RoundedButtonDashbord(
            //       text: "LandLord",
            //       color: kPrimaryLightColor,
            //       textColor: Colors.black,
            //       press: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) {
            //               return LandLordSignUp();
            //             },
            //           ),
            //         );
            //       },
            //     ),
            //     // SocalIcon(
            //     //
            //     //   iconSrc: "assets/icons/facebook.svg",
            //     //   press: () {
            //     //     return Admin() ;
            //     //   },
            //     // ),
            //     // SocalIcon(
            //     //   iconSrc: "assets/icons/twitter.svg",
            //     //   press: () {
            //     //     Admin();
            //     //
            //     //   },
            //     // ),
            //     // SocalIcon(
            //     //   iconSrc: "assets/icons/google-plus.svg",
            //     //   press: () {
            //     //       Tenant();
            //     //  },
            //   ],
            // ),
            // RoundedInputField(
            //   hintText: "Your Email",
            //   onChanged: (value) {},
            // ),
            // RoundedPasswordField(
            //   onChanged: (value) {},
            // ),
            //
            // // rounded buttonn
            // RoundedCnfrmField(
            //   onChanged:(value){},
            // ),
            // RoundedPhoneNumber(
            //   hintText: "Phone Number",
            //   onChanged: (value) {},
            // ),
            // //dropdown
            // // DropdownButton<String>(
            // //   value: dropdownValue,
            // //   icon: Icon(Icons.arrow_downward),
            // //   iconSize: 24,
            // //   elevation: 16,
            // //   style: TextStyle(color: Colors.deepPurple),
            // //   underline: Container(
            // //     height: 2,
            // //     color: Colors.deepPurpleAccent,
            // //   ),
            // //   onChanged: (String newValue) {
            // //     // setState(() {
            // //     //   dropdownValue = newValue;
            // //     // });
            // //   },
            // //   items: <String>['One', 'Two', 'Free', 'Four']
            // //       .map<DropdownMenuItem<String>>((String value) {
            // //     return DropdownMenuItem<String>(
            // //       value: value,
            // //       child: Text(value),
            // //     );
            // //   }).toList(),
            // // ),
            // RoundedButton(
            //   text: "SIGNUP",
            //   press: () {
            //   },
            // ),
            // SizedBox(width: 5,height:34,),
            // //  SizedBox(height: size.height * 0.10),
            // AlreadyHaveAnAccountCheck(
            //   login: false,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return LoginScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
            // Divider(thickness: 2,
            //   color:Colors.grey,)

          ],
        ),
      ),
    );
  }
}




