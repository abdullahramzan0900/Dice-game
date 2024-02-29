import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/dice_roller.dart';
Alignment? aligment;
class GredientContainer extends StatelessWidget{
 const  GredientContainer(this.color1,this.color2,{super.key});
 
 final Color color1;
 final Color color2;

 
  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[color1,color2])
      ),
      child:  Center(
        child:DiceRoller()
        ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//   return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors:[color1,color2])
//       ),
//       child:  Center(
//         child:DiceRoller()
//         ),
//     );
//   }
// }
