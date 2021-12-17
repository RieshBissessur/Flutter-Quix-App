import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _resetQuestion;
  final totalScore;

  Result(this._resetQuestion, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8) ,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 550),
      child: ElevatedButton(
        onPressed: _resetQuestion,
        child: Column(children:[Text('OH WOW YOU FINISHED'),Text('Your score was:'),Text(totalScore.toString()),Text('NOW CLICK TO DO IT AGAIN!!!',textAlign: TextAlign.center,)]),
        style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold)
                ),
      ),
    );  
  }
}