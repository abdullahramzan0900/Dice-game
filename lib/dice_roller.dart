
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
@override 
State<DiceRoller> createState(){
    return _DiceRollerState();
}
}


class _DiceRollerState extends State<DiceRoller>{
  


 var ActiveDice='assets/Images/dice-2.png';

 void rollDice(){
var randomnum=Random().nextInt(6)+1;
  setState(() {
     ActiveDice='assets/Images/dice-${randomnum}.png';
  });
  print("running");
 }

@override
Widget build(context){
  return Column(
          mainAxisSize:MainAxisSize.min,
          children: [
             Image.asset(ActiveDice,width:200),
             const SizedBox(height: 20),
            TextButton(
              onPressed:rollDice, 
              style:TextButton.styleFrom(foregroundColor:Colors.white,textStyle:TextStyle(fontSize:28)),
            
             
             child:const  Text("Roll dice"))
        ]);
}
}