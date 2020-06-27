import 'package:flutter/material.dart';

const iconSize = 80.0;
const sizeBoxHeight = 15.0;
const textFontSize = 18.0;

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizeBoxHeight,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: textFontSize,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
