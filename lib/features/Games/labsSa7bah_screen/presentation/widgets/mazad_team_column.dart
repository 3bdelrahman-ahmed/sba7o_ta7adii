import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mazad_buttons.dart';

class MazadTeamColumn extends StatelessWidget {
  const MazadTeamColumn({super.key, required this.teamMazad, required this.teamCharacter});
  final int teamMazad ;
  final String teamCharacter ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
                "$teamMazad",
                style: TextStyle(fontSize: 20),
              )),
        ),
        MazadButtons(
          team: teamCharacter,
        )
      ],
    );
  }
}
