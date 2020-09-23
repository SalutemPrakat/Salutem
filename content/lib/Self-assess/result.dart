import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 40) {
      resultText = 'Extreme High Risk !! Get Tested';
    } else if (resultScore >= 20) {
      resultText = "Medium Risk ! Get Tested";
    } else if (resultScore < 20) {
      resultText = "You are safe , But be careful.";
    } else {
      resultText = "Other input";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            //Align( alignment: Alignment.centerRight),
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Assessment'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
