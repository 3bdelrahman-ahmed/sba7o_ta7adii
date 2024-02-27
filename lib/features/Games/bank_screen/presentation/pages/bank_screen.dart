import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/features/home_screen/data/instructions_list.dart';

class BankScreen extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text(" انا سكرين ${InstructionsList.gameNames[4]} ")),
    );
  }
}
