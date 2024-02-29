
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
 const  AnswerButton({
    super.key,
    required this.AnswerText,
    required this.onTap
  });
  final String AnswerText;
  final void Function() onTap;
    @override
     Widget build(BuildContext context) {
    
    return ElevatedButton(onPressed:onTap, 
    style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 80, 39, 176),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    padding:const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 40
    )
    ),
    child: Text(AnswerText,style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
    
    );
  }
}