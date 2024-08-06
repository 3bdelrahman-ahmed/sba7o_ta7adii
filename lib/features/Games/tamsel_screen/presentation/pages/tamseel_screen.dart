import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/timer_isrunning_widget.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/basic_widget/change_widget.dart';
import '../../../../../core/widgets/basic_widget/playername_widget.dart';
import '../../../../../core/widgets/basic_widget/timer_isstopped_widget.dart';
import '../../../../../core/widgets/basic_widget/timer_widgets.dart';
import '../../../../../core/widgets/basic_widget/timeriscompleted_widget.dart';
import '../../../../../core/widgets/layout_widget.dart';

class TamseelScreen extends StatelessWidget {
  const TamseelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutWidget(buttonWidget: ChangeWidget(onChanged: () {
      context.read<PasswordAndTamseelCubit>().getPlayer();
      context.read<PasswordAndTamseelCubit>().stopTimer(reset: true);
    }), widget: BlocBuilder<PasswordAndTamseelCubit, PasswordAndTamseelStates>(
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              if (state is LoadingState)
                Container(
                    width: 320.w,
                    height: 160.h,
                    child: const Center(
                        child: CircularProgressIndicator(
                      strokeWidth: 5,
                    )))
              else if (state is FailedGetPlayer)
                const Center(
                  child: Text(AppStrings.somethingWentWrong),
                )
              else
                PlayersWidget(),
              40.height,
              BuildTimerWidget(),
              if (state is TimerRunningState)
                TimerIsRunning(
                    second: context.read<PasswordAndTamseelCubit>().second,
                    maxSeconds: PasswordAndTamseelCubit.maxSeconds)
              else if (state is TimerPausedState)
                TimerStopped(
                  second: context.read<PasswordAndTamseelCubit>().second,
                  maxSeconds: PasswordAndTamseelCubit.maxSeconds,
                )
              else
                TimerCompleted(
                    second: context.read<PasswordAndTamseelCubit>().second,
                    maxSeconds: PasswordAndTamseelCubit.maxSeconds),
              25.height,
              CounterTeamWidget(
                team1: context.read<PasswordAndTamseelCubit>().team1,
                team2: context.read<PasswordAndTamseelCubit>().team2,
                onDecTeamA: () => context
                    .read<PasswordAndTamseelCubit>()
                    .teamsDecreament('A'),
                onIncTeamA: () => context
                    .read<PasswordAndTamseelCubit>()
                    .teamsIncreament('A'),
                onDecTeamB: () => context
                    .read<PasswordAndTamseelCubit>()
                    .teamsDecreament('B'),
                onIncTeamB: () => context
                    .read<PasswordAndTamseelCubit>()
                    .teamsIncreament('B'),
              ).paddingSymmetric(horizontal: 15.w)
            ],
          ),
        );
      },
    )));
  }
}
