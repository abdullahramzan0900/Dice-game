import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget{

  StartScreen(this.StartQuiz,{super.key});

  final void Function() StartQuiz;

  
  @override
  Widget build(BuildContext context) {
 return  Center(
  child:Column(
  mainAxisSize: MainAxisSize.min,
  children: [
      Image.asset('assets/Images/quiz-logo.png',width:200),
        SizedBox(height: 30),
   Text("Quiz"),
    SizedBox(height: 30),
  OutlinedButton.icon(onPressed:StartQuiz,
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.white
  ),
  icon: Icon(Icons.arrow_right_alt),
  
  label: const Text("Quiz")
  )                            
   

  ],              
 )

 );
  }
}