import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/features/home_screen/data/instructions_list.dart';

class InstructionsScreen extends StatelessWidget{
 final int index;

  const InstructionsScreen({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
          Center(
            child: Text(' انا تعليمات لعبة : ${InstructionsList().gameNames[index]} '),
          )
    
    );
  }
}