import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_states.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_team_column.dart';

import '../../../../../core/widgets/basic_widget/timer_widgets.dart';

class MazadCounter extends StatelessWidget {
  const MazadCounter({super.key});

  @override
  Widget build(BuildContext context) {
    int seconds = context.watch<LabsCubit>().second;
    final int team1 = context.watch<LabsCubit>().team1Mazad;
    final int team2 = context.watch<LabsCubit>().team2Mazad;
    return Row(
      children: [
        MazadTeamColumn(teamMazad: team2, teamCharacter: "B"),
        Spacer(),
        Column(
          children: [
            BlocBuilder<LabsCubit, LabsStates>(
              builder: (context, state) {
                if(state is TimerRunningState){
                  seconds = state.seconds;
                }
                return BuildTimerWidget(
                  width: 50.w,
                  height: 50.w,
                  seconds: seconds,
                  fontSize: 20.sp,
                );
              },
            ),
            10.height,
            IconButton(
                onPressed: () {
                  context.read<LabsCubit>().resetTimer();
                },
                icon: Icon(Icons.refresh, color: Colors.white, size: 30.sp)),
          ],
        ),
        Spacer(),
        MazadTeamColumn(teamMazad: team1, teamCharacter: "A")
      ],
    );
  }
}
