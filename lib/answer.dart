import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandller;
  final String answer;

   Answer(this.selectHandller, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10) ,
      child: ElevatedButton(
        onPressed: selectHandller,
        child: Text(answer),
        style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold)
                ),
      ),
    );  
  }
}