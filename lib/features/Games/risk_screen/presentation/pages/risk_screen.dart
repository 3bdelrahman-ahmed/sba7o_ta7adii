import 'package:flutter/material.dart';

import '../../../../home_screen/data/instructions_list.dart';

class RiskScreen extends StatelessWidget {
  const RiskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text(" انا سكرين ${InstructionsList.gameNames[3]} ")),);
  }
}
