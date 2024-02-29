import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/answers_button.dart';
import 'package:flutter_application_1/Data/Question_data.dart';

class Question extends StatefulWidget {
  const Question({super.key,required this.onSelectedAnswer});
  final void Function(String Answers) onSelectedAnswer;
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
var currentquestionindex=0;

void answerQuestion(String selectedAnswers){
  setState(() {
    widget.onSelectedAnswer(selectedAnswers);
  currentquestionindex++;//setstaate make the build fucntion to execute again
    
  });
}
  @override
  Widget build(context) {
      final currentQuestion=questions[currentquestionindex];
    return SizedBox(
        width: double.infinity,
        child:Container(
          margin: const EdgeInsets.all(40),
          
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
  
          children: [
             Text(currentQuestion.text,style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answers){
              return AnswerButton(AnswerText:answers, onTap:(()=>{
                answerQuestion(answers)
              }
              ),
              );
            }),
            // AnswerButton(AnswerText: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(AnswerText: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(AnswerText: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(AnswerText: currentQuestion.answers[3], onTap: () {}),
          ],
        ))
        );
  }
}
