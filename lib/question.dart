import 'package:flutter/material.dart';


class Question extends StatelessWidget {

  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:EdgeInsets.all(8),
      child:Text(
      questiontext,
      style:TextStyle(fontSize:18),
      textAlign: TextAlign.center,
    )
    );
  }
}