import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MBI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  color: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  color: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
          ReusableCard(
            color: Color(0xFF1D1E33),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  color: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  color: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
