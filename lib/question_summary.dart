import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/style_text.dart';

class questionSummary extends StatelessWidget {
  const questionSummary({super.key, required this.summary});
  final List<Map<String, Object>> summary;
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 300,
      child:SingleChildScrollView(
   child:  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: summary.map(
        (data) {
                bool isCorrect = data['correct_answer'] == data['user_answer'];
              Color color = isCorrect ? Colors.green : Colors.red;

          return Row(
            children: [
        Container(
          margin: EdgeInsets.only(right: 40,bottom: 20),

  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color:color,
    
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      ((data['question_index'] as int) + 1).toString(),
      style: TextStyle(color: Colors.white), 
    ),
  ),
),
              Expanded(child: 
              Column(
                children: [
               Container(
  margin: EdgeInsets.only(top: 20), // Add margin to the question text
  child: Text(
    data['question'] as String,
    style: TextStyle(fontSize: 15, color: Colors.white),
  ),
),
                  SizedBox(height: 5),
                  Text(data['correct_answer'] as String,style: TextStyle(color: Color.fromARGB(255, 39, 167, 176)),textAlign: TextAlign.start),
                  Text(data['user_answer'] as String,style: TextStyle(color: const Color.fromARGB(255, 244, 54, 54))),
                ],
              ),
              ),
            ],
          );
        },
      ).toList(),
    ),
      ),

    
    );
    
  }
}
