import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_auth/ButtomBarRun.dart';
import 'package:flutter_auth/Screens/Admin/admin_signup.dart';
import 'package:flutter_auth/Screens/LandLord/landlordsignup.dart';
import 'package:flutter_auth/Screens/LandLordDashbord/landlorddash.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Tenant/tenantsignup.dart';
import 'package:flutter_auth/Screens/TenantHomePage/TenantHomePage.dart';
import 'package:flutter_auth/buttombar.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_button_dashbords.dart';
import 'package:flutter_auth/components/rounded_cnfrm_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/rounded_phone_number.dart';
import 'package:flutter_auth/utils/Requests.dart';
import 'package:flutter_auth/utils/dto/signup_response.dart';
import 'package:flutter_auth/utils/pref_utils.dart';
import '../../../constants.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String emailController;
  String passwordController;
  String confirmController;
  String phoneController;
  String userName;
  double tenant=0.1;
  double lanlord=1;
  String category="Landlord";
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
                RoundedButtonDashbord(
                  text: "Tenant",
                  color: kPrimaryColor.withOpacity(tenant),
                  textColor: Colors.black,
                  press: () {
                        setState(() {
                          tenant=1;
                          lanlord=0.1;
                          category="Tenant";
                        });
                  },
                ),

                RoundedButtonDashbord(
                  text: "LandLord",
                  color: kPrimaryColor.withOpacity(lanlord),
                  textColor: Colors.black,
                  press: () {
                    setState(() {
                      tenant=0.1;
                      lanlord=1;
                      category="Landlord";
                    });
                  },
                ),
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
            RoundedInputField(
              hintText: "UserName",
              onChanged: (value) {
                userName=value;
              },
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                emailController=value;
              },
            ),

            RoundedPasswordField(
              onChanged: (value) {
                passwordController=value;
              },
            ),

            // rounded buttonn
            RoundedCnfrmField(
              onChanged:(value){
                confirmController=value;
              },
            ),
            RoundedPhoneNumber(
              hintText: "Phone Number",
              onChanged: (value) {
                phoneController=value;
              },
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
              press: () async {
                SignUpResponse response=await Requests.registerUser(userName, emailController, passwordController, phoneController,category, context);
                if(response!=null)
                  {
                    PreferenceUtils.setString("userName", response.userName);
                    PreferenceUtils.setString("email", response.email);
                    PreferenceUtils.setString("token", response.token.toString());
                    PreferenceUtils.setString("id", response.id.toString());
                    PreferenceUtils.setString("isVerified", response.isVerified.toString());
                    Navigator.pop(context);
                  }
              },
            ),
          SizedBox(width: 5,height:34,),
          //  SizedBox(height: size.height * 0.10),
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

