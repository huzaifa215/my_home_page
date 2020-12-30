import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';
import 'package:badges/badges.dart';
class RoundedPrice extends StatelessWidget {
  final String hintText;

  final ValueChanged<String> onChanged;
  const RoundedPrice ({
    Key key,
    this.hintText,
    //this.icon = Icons.dollars,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(

          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
