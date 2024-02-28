
import 'package:flutter/material.dart';
class styleText extends StatelessWidget{
   styleText(this.text,{super.key});
final String text;
  @override
  Widget build(BuildContext context){
       return  Text(
        text,
        style:const TextStyle
        (
         color: Colors.red,
         fontSize: 28
        )
        );
  }
}