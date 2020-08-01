import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.pressed});

  final IconData icon;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}