import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/admin_signup.dart';
import 'package:flutter_auth/Screens/LandLord/landlordsignup.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Tenant/tenantsignup.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_area.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_button_dashbords.dart';
import 'package:flutter_auth/components/rounded_cnfrm_field.dart';
import 'package:flutter_auth/components/rounded_decription.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_location.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/rounded_phone_number.dart';
import 'package:flutter_auth/components/rounded_price.dart';
import 'package:flutter_auth/components/rounded_unit.dart';

import '../../../../constants.dart';

class AddPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppBar(
              title: const Text('ADD POST'),
            ),
            SizedBox(height: size.height * 0.06),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // admin dashbord
                // RoundedButtonDashbord(
                //   text: "Admin",
                //   color: kPrimaryLightColor,
                //   textColor: Colors.black,
                //   press: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return AdminSignUp();
                //         },
                //       ),
                //     );
                //   },
                // ),
                // RoundedButtonDashbord(
                //   text: "Tenant",
                //   color: kPrimaryLightColor,
                //   textColor: Colors.black,
                //   press: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return TenantSignUp();
                //         },
                //       ),
                //     );
                //   },
                // ),

                // RoundedButtonDashbord(
                //   text: "LandLord",
                //   color: kPrimaryLightColor,
                //   textColor: Colors.black,
                //   press: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return LandLordSignUp();
                //         },
                //       ),
                //     );
                //   },
                // ),
                // SocalIcon(
                //
                //   iconSrc: "assets/icons/facebook.svg",
                //   press: () {
                //     return Admin() ;
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
            RoundedInputLocation(
              hintText: "Location",
              onChanged: (value) {},
            ),
            RoundedPrice(
              hintText: "Price",
              onChanged: (value) {},
            ),
            RoundedArea(
              hintText: "Area",
              onChanged: (value) {},
            ),
            RoundedUnit(
              hintText: "Unit",
              onChanged: (value) {},
            ),
//image
            RoundedDecription(
              hintText: "Description",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "UPLOAD IMAGES",
              press: () {
              },
            ),


            RoundedButton(
              text: "SUBMIT",
              press: () {
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

