import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/team_column.dart';

class CounterTeamWidget extends StatelessWidget {
  final int team1;
  final int team2;
  final VoidCallback? onIncTeamA;
  final VoidCallback? onIncTeamB;
  final VoidCallback? onDecTeamA;
  final VoidCallback? onDecTeamB;

  CounterTeamWidget({
   required this.team1,
   required this.team2,
    required this.onIncTeamA,
    required this.onIncTeamB,
    required this.onDecTeamA,
    required this.onDecTeamB
});
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 180.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TeamColumn(teamName: AppStrings.team2, teamCounter: team2, onIncTeam: onIncTeamB, onDecTeam: onDecTeamB),
          Spacer(),
          TeamColumn(teamName: AppStrings.team1, teamCounter: team1, onIncTeam: onIncTeamA, onDecTeam: onDecTeamA)
        ],
      ),
    );
  }
}
