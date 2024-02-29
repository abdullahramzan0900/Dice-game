import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Data/Question_data.dart';
import 'package:flutter_application_1/question_summary.dart';

// class ResultScreen extends StatefulWidget{
//  const ResultScreen({super.key});
//   @override
//   State<ResultScreen> createState(){
//     return _ResultScreen();
//   }
// }
class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenAnswer,required this.onRestart});
  final List<String> choosenAnswer;
    final void Function() onRestart;

  List<Map<String, Object>> getsummaryData() {
    final List<Map<String, Object>> summary = [];


    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final SummaryData = getsummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = SummaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;


    

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You answered $correctAnswers out of $totalQuestions Questions correct",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 40),
              questionSummary(summary: SummaryData),
              const SizedBox(height: 40),
              TextButton.icon(
                onPressed: onRestart,
                icon: const Icon(Icons.refresh),
                label: const Text("Restart Quiz"),
              ),
            ],
          ),
        ));
  }
}
