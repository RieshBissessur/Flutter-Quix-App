import 'package:flutter/material.dart';

import './quiz.dart';
import './resuts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  int _quest_num = 0;
  num totalScore  = 0;

  final questions1 = const [
        {
        'question': "What is time?",
        'answer': [{'text':'Everything?','score':1},{'text':'Nothing?','score':2},{'text':'The 5th dimension?','score':3}],
        },
        {
        'question':'What justifies existence?',
        'answer': [{'text':'Pain','score':3},{'text':'Money','score':0},{'text':'Hapiness','score':1}],
        
        },
        {
        'question':'What is death?',
        'answer': [{'text':'The cure to life','score':4},{'text':'The end of life','score':1},{'text':'A man made construct','score':3}],
        
        },
      ];

  void _ansQuestion(int score){
    setState(() {
      totalScore = totalScore + score; 
      _quest_num = _quest_num + 1;
      
    });
     
  }

  void _resetQuestion(){
    setState(() { 
    _quest_num = 0;
    totalScore = 0;   
    });
     
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Can You Even Knowledge?'),
          backgroundColor: Colors.black,
        ),
        body: _quest_num < questions1.length 
        ? Quiz(_ansQuestion, questions1, _quest_num,totalScore) 
        : Center(child:Result(_resetQuestion,totalScore)),
      ),
    );
  }
}
