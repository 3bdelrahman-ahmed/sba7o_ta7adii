import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';


class ArostyScreen extends StatelessWidget {
  const ArostyScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text(" انا سكرين ${GamesNames.gameNames[7]} ")),
    );
  }
}
