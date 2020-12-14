import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_cnfrm_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/rounded_phone_number.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.09),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            Image(
                image:AssetImage('assets/images/logo.png')
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),

            // rounded buttonn
            RoundedCnfrmField(
              onChanged:(value){},
            ),
            RoundedPhoneNumber(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            //dropdown
        DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            // setState(() {
            //   dropdownValue = newValue;
            // });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),



            RoundedButton(
              text: "SIGNUP",
              press: () {
              },
            ),
            SizedBox(height: size.height * 0.10),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          Divider(thickness: 2,
          color:Colors.grey,)
          ],
        ),
      ),
    );
  }
}

// class Company {
//
//   String name;
//
//   Company(this.name);
//
//   static List<Company> getCompanies() {
//     return <Company>[
//       Company('Landlord'),
//       Company('Turnet'),
//
//     ];
//   }
// }


// class DropDown extends StatefulWidget {
//   DropDown() : super();
//
//   final String title = "DropDown Demo";
//
//   @override
//   DropDownState createState() => DropDownState();
// }
//
// class Company {
//   int id;
//   String name;
//
//   Company(this.id, this.name);
//
//   static List<Company> getCompanies() {
//     return <Company>[
//       Company(1, 'LandLord'),
//       Company(2, 'Torent'),
//
//     ];
//   }
// }
//
// class DropDownState extends State<DropDown> {
//   //
//   List<Company> _companies = Company.getCompanies();
//   List<DropdownMenuItem<Company>> _dropdownMenuItems;
//   Company _selectedCompany;
//
//   @override
//   void initState() {
//     _dropdownMenuItems = buildDropdownMenuItems(_companies);
//     _selectedCompany = _dropdownMenuItems[0].value;
//     super.initState();
//   }
//
//   List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
//     List<DropdownMenuItem<Company>> items = List();
//     for (Company company in companies) {
//       items.add(
//         DropdownMenuItem(
//           value: company,
//           child: Text(company.name),
//         ),
//       );
//     }
//     return items;
//   }
//
//   onChangeDropdownItem(Company selectedCompany) {
//     setState(() {
//       _selectedCompany = selectedCompany;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text("DropDown Button Example"),
//         ),
//         body: new Container(
//           child: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Select a company"),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 DropdownButton(
//                   value: _selectedCompany,
//                   items: _dropdownMenuItems,
//                   onChanged: onChangeDropdownItem,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text('Selected: ${_selectedCompany.name}'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }