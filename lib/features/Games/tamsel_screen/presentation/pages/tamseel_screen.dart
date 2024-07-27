
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/timer_isrunning_widget.dart';
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
        body: LayoutWidget(
      buttonWidget: ChangeWidget(
          onChanged: (){
      context.read<PasswordTamseeBlocCubit>().getPlayer();
      context.read<PasswordTamseeBlocCubit>().stopTimer(reset: true);
      }),
      widget: BlocConsumer<PasswordTamseeBlocCubit, PasswordTamseelBlocState>(
        builder: (context, state) {
          return Center(
            child:  Column(
                children: [
                  if (state is LoadingState)
                    Container(
                        width: 320.w,
                        height: 200.h,
                        child: const Center(
                            child: CircularProgressIndicator(
                          strokeWidth: 5,
                          backgroundColor: Colors.white,
                        )))
                  else if (state is FailedGetPlayer)
                    const Center(
                      child: Text("Something went wrong"),
                    )
                  else
                    PlayersWidget(),
                  SizedBox(
                    height: 40.h,
                  ),
                  BuildTimerWidget(),
                  if (state is TimerRunningState)
                    TimerIsRunning(
                        second: context.read<PasswordTamseeBlocCubit>().second,
                        maxSeconds: PasswordTamseeBlocCubit.maxSeconds)
                  else if (state is TimerPausedState)
                    TimerStopped(
                      second: context.read<PasswordTamseeBlocCubit>().second,
                      maxSeconds: PasswordTamseeBlocCubit.maxSeconds,
                    )
                  else
                    TimerCompleted(
                        second: context.read<PasswordTamseeBlocCubit>().second,
                        maxSeconds: PasswordTamseeBlocCubit.maxSeconds),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: CounterTeamWidget(
                        team1: context.read<PasswordTamseeBlocCubit>().team1,
                        team2: context.read<PasswordTamseeBlocCubit>().team2,
                        onDecteamA: () => context
                            .read<PasswordTamseeBlocCubit>()
                            .teamsDecreament('A'),
                        onIncteamA: () => context
                            .read<PasswordTamseeBlocCubit>()
                            .teamsIncreament('A'),
                        onDecteamB: () => context
                            .read<PasswordTamseeBlocCubit>()
                            .teamsDecreament('B'),
                        onIncteamB: () => context
                            .read<PasswordTamseeBlocCubit>()
                            .teamsIncreament('B'),
                      ))
                ],
              ),
            
          );
        },
        listener: (context, state) {},
      ),
    ));
  }
}
