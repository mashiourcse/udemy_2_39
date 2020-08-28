import 'package:flutter/material.dart';
import 'package:flutter_appppp/question.dart';
import 'package:flutter_appppp/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

var questions = [

    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : ['Black', 'Red', 'Green', 'White'],
    },

    {
      'questionText' : 'What\'s your favorite animal?',
      'answers' : ['Cat', 'Dog', 'Gorilla', 'Tiger'],
    },

    {
      'questionText' : 'What\'s your favorite Game?',
      'answers' : ['Valorant', 'PUBGM', 'CODM', 'Fortnite'],
    },

  ];

  var _questionIndex = 0;
  var ans;
  void _answerQuestion(){
    
    setState(() {
      
      _questionIndex = _questionIndex + 1;
        
    });

     print(_questionIndex);

if(_questionIndex < questions.length){
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
            title: Text('My First App'),
        ),

        body: _questionIndex < questions.length ? 
        Column(
          children: <Widget>[

            //Text(questions.elementAt(questionIndex),),

            Question(questions[_questionIndex]['questionText']),

            ...(questions[_questionIndex]['answers'] as List).map( (e){
                return Answer(_answerQuestion, e);
            })        
            
          ],
        ) : Center(child: Text('You did it!'),),

      ),
    );

  }
}
