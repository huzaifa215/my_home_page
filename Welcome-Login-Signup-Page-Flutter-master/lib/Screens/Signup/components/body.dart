import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_button_dashbords.dart';
import 'package:flutter_auth/components/rounded_cnfrm_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/rounded_phone_number.dart';
import 'package:flutter_auth/dashboards/admin.dart';
import 'package:flutter_auth/dashboards/landlord.dart';
import 'package:flutter_auth/dashboards/tenant.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // admin dashbord
                RoundedButtonDashbord(
                  text: "Admin",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Admin();
                        },
                      ),
                    );
                  },
                ),

                // SocalIcon(
                //   iconSrc: "assets/icons/facebook.svg",
                //   press: () {
                //       LandLord();
                //   },
                // ),
                // SocalIcon(
                //   iconSrc: "assets/icons/twitter.svg",
                //   press: () {
                //     Admin();
                //
                //   },
                // ),
                // SocalIcon(
                //   iconSrc: "assets/icons/google-plus.svg",
                //   press: () {
                //       Tenant();
                //  },

              ],
            ),
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
            // DropdownButton<String>(
            //   value: dropdownValue,
            //   icon: Icon(Icons.arrow_downward),
            //   iconSize: 24,
            //   elevation: 16,
            //   style: TextStyle(color: Colors.deepPurple),
            //   underline: Container(
            //     height: 2,
            //     color: Colors.deepPurpleAccent,
            //   ),
            //   onChanged: (String newValue) {
            //     // setState(() {
            //     //   dropdownValue = newValue;
            //     // });
            //   },
            //   items: <String>['One', 'Two', 'Free', 'Four']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),



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
