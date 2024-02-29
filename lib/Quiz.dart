import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Data/Question_data.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/result_screen.dart';
import 'package:flutter_application_1/start_screen.dart';



class Quiz extends StatefulWidget{
 Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();//last
  }
}

class _QuizState extends  State<Quiz>{
   List<String> selectedAnswers=[];
  String ActiveScreen='start-Screen' ;// we can store widget in varaible beacause widget are objects and objects are just reqular vlaue in dart
  @override

  void SwitchScreen(){
    setState(() {
      ActiveScreen='Question';
    });
  }

  void chooseAnswer(String Answers){
    selectedAnswers.add(Answers);

    if(selectedAnswers.length==questions.length){
      setState(() {
        ActiveScreen='Result-Screen';
      });
    }
  }
  void RestartQuiz(){
    setState((){
      selectedAnswers=[];
    ActiveScreen='Question';
    });
  }


@override
Widget build(context){
  var ScreenWidget=ActiveScreen=='start-Screen'? 
    StartScreen(SwitchScreen):
    Question(onSelectedAnswer: chooseAnswer);

    if(ActiveScreen=='Result-Screen'){
    ScreenWidget=ResultScreen(choosenAnswer: selectedAnswers, onRestart: RestartQuiz);
    }
  return MaterialApp(
    home:Scaffold(body:
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          const Color.fromARGB(255, 201, 68, 112),
        ])
      ),
    child:ScreenWidget
    )
    ),
    );
}
}