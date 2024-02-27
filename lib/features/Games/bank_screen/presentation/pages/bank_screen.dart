import 'package:flutter/material.dart';

import '../../../../../core/widgets/static/games_names.dart';

class BankScreen extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text(" انا سكرين ${GamesNames.gameNames[4]} ")),
    );
  }
}
