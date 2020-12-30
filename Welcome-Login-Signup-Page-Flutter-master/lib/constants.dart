import 'package:flutter/material.dart';
const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);



//
// // DefaultTabController(
// //  // length: ...,
// //   child: Column(
// //     children: <Widget>[
// //       ButtonsTabBar(
// //         backgroundColor: Colors.blue[600],
// //         unselectedBackgroundColor: Colors.white,
// //         labelStyle:
// //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
// //         unselectedLabelStyle: TextStyle(
// //             color: Colors.blue[600], fontWeight: FontWeight.bold),
// //         borderWidth: 1,
// //         unselectedBorderColor: Colors.blue[600],
// //         radius: 100,
// //        // tabs: ...,
// //       ),
// //       Expanded(
// //         child: TabBarView(
// //          // children: ...,
// //         ),
// //       ),
// //     ],
// //   ),
// // )
// // ButtonBar(
// //   alignment: MainAxisAlignment.start,
// //   children: [
// //     FlatButton(
// //       textColor: const Color(0xFF6200EE),
// //       onPressed: () {
// //         // Perform some action
// //       },
// //       child: const Text('ACTION 1'),
// //     ),
// //     FlatButton(
// //       textColor: const Color(0xFF6200EE),
// //       onPressed: () {
// //         // Perform some action
// //       },
// //       child: const Text('ACTION 2'),
// //     ),
// //   ],
// // ),
// ],
// ),
// ),
// // RoundedButton(
// //   text: "All Post",
// //   press: () {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) {
// //           return LoginScreen();
// //         },
// //       ),
// //     );
// //   },
// //   // press: () {
// //   //  AdminDash();
// //   // },
// // ),
// // SizedBox(height: size.height * 0.04),
// // RoundedButton(
// //   text: "Pandding Posts",
// //   press: () {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) {
// //           return LoginScreen();
// //         },
// //       ),
// //     );
// //   },
// //   // press: () {
// //   //  AdminDash();
// //   // },
// //
// // ),
// // SizedBox(height: size.height * 0.04),
// // RoundedButton(
// //   text: "",
// //   press: () {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) {
// //           return LoginScreen();
// //         },
// //       ),
// //     );
// //   },
// // press: () {
// //  AdminDash();
// // },
//
// // ),
// // SizedBox(height: size.height * 0.04),
// // RoundedButton(
// //   text: "LandLords",
// //   press: () {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) {
// //           return LoginScreen();
// //         },
// //       ),
// //     );
// //   },
// // press: () {
// //  AdminDash();
// // },
//
// // ),
//
//
// // press: () {
// //  AdminDash();
// // },
// // Card(
// // child: Column(
// //   mainAxisSize: MainAxisSize.min,
// //   children: <Widget>[
// //     const ListTile(
// //       leading: Icon(Icons.album, size: 50),
// //       title: Text(''),
// //       subtitle: Text('TWICE'),
//
// //       ),
// //     ],
// //   ),
// // ),
//
// // SizedBox(height: size.height * 0.09),
// // Text(
// //   "ADMIN SIGNUP",
// //   style: TextStyle(fontWeight: FontWeight.bold),
// // ),
// // SizedBox(height: size.height * 0.01),
// // // SvgPicture.asset(
// // //   "assets/icons/signup.svg",
// // //   height: size.height * 0.35,
// // // ),
// // Image(
// //     image:AssetImage('assets/images/logo.png')
// // ),
// // SizedBox(height: size.height * 0.02),
// // Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //   children: <Widget>[
// //     // admin dashbord
// //     RoundedButtonDashbord(
// //       text: "Admin",
// //       color: kPrimaryLightColor,
// //       textColor: Colors.black,
// //       press: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) {
// //               return AdminSignUp();
// //             },
// //           ),
// //         );
// //       },
// //     ),
// //     RoundedButtonDashbord(
// //       text: "Tenant",
// //       color: kPrimaryLightColor,
// //       textColor: Colors.black,
// //       press: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) {
// //               return TenantSignUp();
// //             },
// //           ),
// //         );
// //       },
// //     ),
// //
// //     RoundedButtonDashbord(
// //       text: "LandLord",
// //       color: kPrimaryLightColor,
// //       textColor: Colors.black,
// //       press: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) {
// //               return LandLordSignUp();
// //             },
// //           ),
// //         );
// //       },
// //     ),
// //     // SocalIcon(
// //     //
// //     //   iconSrc: "assets/icons/facebook.svg",
// //     //   press: () {
// //     //     return Admin() ;
// //     //   },
// //     // ),
// //     // SocalIcon(
// //     //   iconSrc: "assets/icons/twitter.svg",
// //     //   press: () {
// //     //     Admin();
// //     //
// //     //   },
// //     // ),
// //     // SocalIcon(
// //     //   iconSrc: "assets/icons/google-plus.svg",
// //     //   press: () {
// //     //       Tenant();
// //     //  },
// //   ],
// // ),
// // RoundedInputField(
// //   hintText: "Your Email",
// //   onChanged: (value) {},
// // ),
// // RoundedPasswordField(
// //   onChanged: (value) {},
// // ),
// //
// // // rounded buttonn
// // RoundedCnfrmField(
// //   onChanged:(value){},
// // ),
// // RoundedPhoneNumber(
// //   hintText: "Phone Number",
// //   onChanged: (value) {},
// // ),
// // //dropdown
// // // DropdownButton<String>(
// // //   value: dropdownValue,
// // //   icon: Icon(Icons.arrow_downward),
// // //   iconSize: 24,
// // //   elevation: 16,
// // //   style: TextStyle(color: Colors.deepPurple),
// // //   underline: Container(
// // //     height: 2,
// // //     color: Colors.deepPurpleAccent,
// // //   ),
// // //   onChanged: (String newValue) {
// // //     // setState(() {
// // //     //   dropdownValue = newValue;
// // //     // });
// // //   },
// // //   items: <String>['One', 'Two', 'Free', 'Four']
// // //       .map<DropdownMenuItem<String>>((String value) {
// // //     return DropdownMenuItem<String>(
// // //       value: value,
// // //       child: Text(value),
// // //     );
// // //   }).toList(),
// // // ),
// // RoundedButton(
// //   text: "SIGNUP",
// //   press: () {
// //   },
// // ),
// // SizedBox(width: 5,height:34,),
// // //  SizedBox(height: size.height * 0.10),
// // AlreadyHaveAnAccountCheck(
// //   login: false,
// //   press: () {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) {
// //           return LoginScreen();
// //         },
// //       ),
// //     );
// //   },
// // ),
// // Divider(thickness: 2,
// //   color:Colors.grey,)
// // BottomNavigationBar(
// // onTap: (value){
// // int a=onTabTapped();
// // if (a==1){
// // Navigator.push(
// // context,
// // MaterialPageRoute(
// // builder: (context) {
// // return AdminDash();
// // },
// // ),
// // );
// // }
// // else if (a==2){
// // Navigator.push(
// // context,
// // MaterialPageRoute(
// // builder: (context) {
// // return LandLordDash();
// // },
// // ),
// // );
// // }
// // else if (a==1){
// // Navigator.push(
// // context,
// // MaterialPageRoute(
// // builder: (context) {
// // return AdminDash();
// // },
// // ),
// // );
// // }
// // else if (a==1){
// // Navigator.push(
// // context,
// // MaterialPageRoute(
// // builder: (context) {
// // return AdminDash();
// // },
// // ),
// // );
// // }
// //
// //
// // }
// // , // new
// // currentIndex: currentIndex, // new
// // type: BottomNavigationBarType.fixed,
// // backgroundColor: Color(0xFF6200EE),
// // selectedItemColor: Colors.white,
// // unselectedItemColor: Colors.white,
// // selectedFontSize: 14,
// // //onTap: onTabTapped, // new
// // // currentIndex: _currentIndex,
// // unselectedFontSize: 14,
// //
// // // onTap: (value) {
// // //      //return LandLordDash();
// // //   Navigator.push(
// // //     context,
// // //     MaterialPageRoute(
// // //       builder: (context) {
// // //         return AdminDash();
// // //       },
// // //     ),
// // //   );
// // //  },
// // items: [
// // BottomNavigationBarItem(
// //
// // title: Text('Home'),
// // icon: Icon(Icons.home),
// //
// // ),
// // BottomNavigationBarItem(
// // title: Text('Calculator'),
// // icon: Icon(Icons.calculate),
// // ),
// // BottomNavigationBarItem(
// // title: Text('Search'),
// // icon: Icon(Icons.search),
// // ),
// // BottomNavigationBarItem(
// // title: Text('music'),
// // icon: Icon(Icons.calculate),
// // ),
// // ],
// // )
