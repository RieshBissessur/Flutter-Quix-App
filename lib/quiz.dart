import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions1;
  final int _quest_num;
  final _ansQuestion;
  final totalScore;

  Quiz(this._ansQuestion,this.questions1,this._quest_num, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions1[_quest_num]['question'].toString(),
            ),
            ...(questions1[_quest_num]['answer'] as List<Map<String,Object>>).map((answer) {
              return Answer(() => _ansQuestion(answer['score']), answer['text'].toString());
            }).toList(),
            Text('Total Score is',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold)
            ),
            Text(totalScore.toString(),style:TextStyle(fontSize:25,fontWeight: FontWeight.bold)
            ),
          ],
        );
  }
}