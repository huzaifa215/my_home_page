import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO SMART MANAGER",
              style: TextStyle(fontWeight: FontWeight.bold),

            ),
            SizedBox(height: size.height * 0.05),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            Image(
                image:AssetImage('assets/images/logo.png')
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
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
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.05),
            Text("Get Started with us"),
            SizedBox(height: size.height * 0.02),

            //links
            RichText(
                text: TextSpan(
                    children: [
                      // TextSpan(
                      //     style: TextStyle(color: Colors.black),
                      //     text: "Get Started with us"
                      // ),

                      TextSpan(
                         // style: linkText,
                          style: TextStyle(color: Colors.blueGrey),
                          text: "Terms and Conditions ",
                          recognizer: TapGestureRecognizer()..onTap =  () async{
                            var url = "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }
                      ),
                    ]
                )
            )
          ],
        ),
      ),
    );
  }
}
