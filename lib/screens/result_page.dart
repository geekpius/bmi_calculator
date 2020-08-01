import 'package:bmicalculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reuseable_card.dart';

class ResultPage extends StatelessWidget {
//  ResultPage({@required this.bmiResult, @required this.textResult, @required this.interpretation});
//  final String bmiResult;
//  final String textResult;
//  final String interpretation;

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings as map
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: kAppTitle,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args['textResult'],
                    style: kResultTextStyle,
                  ),
                  Text(
                    args['bmiResult'],
                    style: kBMITextStyle,
                  ),
                  Text(
                    args['interpretation'],
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTapped: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
