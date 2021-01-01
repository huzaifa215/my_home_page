import 'dart:core';
import 'package:flutter/material.dart';
import 'Screens/Admin/components/background.dart';
import 'components/rounded_area.dart';
import 'components/rounded_button.dart';
import 'components/rounded_decription.dart';
import 'components/rounded_input_location.dart';
import 'components/rounded_price.dart';
import 'components/rounded_unit.dart';
class Calculator extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            AppBar(
              title: const Text('CALCULATOR'),
            ),
            SizedBox(width: 0,height:60,),
            Text(
              "CALCULATOR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 0,height: 40,),
            //SizedBox(height: size.height * 0.01),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            Image(
                image:AssetImage('assets/images/logo.png')
            ),
            //SizedBox(height: size.height * 0.2),
            SizedBox(width: 0,height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RoundedPrice(
                  hintText: "Price",
                  onChanged: (value) {},
                ),
            RoundedPrice(
              hintText: "Price",
              onChanged: (value) {},
            ),
                RoundedPrice(
                  hintText: "Price",
                  onChanged: (value) {},
                ),

//image
                RoundedPrice(
                  hintText: "Price",
                  onChanged: (value) {},
                ),


      FloatingActionButton(
        // When the user presses the button, show an alert dialog containing the
        // text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the user has entered by using the
                // TextEditingController.
                content: Text('Answer'),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.vertical_align_center),
      ),
            // RoundedButton(
            //   text: "SUBMIT",
            //   press: () {
            //
            //   },
            // ),

            Divider(thickness: 2,
              color:Colors.grey,)

          ],
        ),
      ]
    )
    )
    );
  }
  }