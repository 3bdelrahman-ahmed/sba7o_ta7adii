import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/timer_isrunning_widget.dart';

import '../../../../../core/widgets/basic_widget/arrows_widgets.dart';
import '../../../../../core/widgets/basic_widget/playername_widget.dart';
import '../../../../../core/widgets/basic_widget/timer_isstopped_widget.dart';
import '../../../../../core/widgets/basic_widget/timer_widgets.dart';
import '../../../../../core/widgets/basic_widget/timeriscompleted_widget.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/staduim.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            // Adjust the sigma values for the blur intensity
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Center(
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Image.asset(
                'assets/noso7y.png',
                scale: 7.5,
              ),
            ),
          ),
          BlocConsumer<PasswordTamseeBlocCubit,PasswordTamseelBlocState>(
            builder: (context, state) {
             return Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                      ArrowsWidget(),
                      SizedBox(
                        height: 50,
                      ),
                      if(state is LoadingState)
                   Container(
                       width: 300.w,
                       height: 150.h,
                       child: Center(child:
                       CircularProgressIndicator
                         (strokeWidth: 5,backgroundColor: Colors.white,)))
                      else if (state is FailedGetPlayer)
                      Center(child: Text("Something went wrong"),)
                      else
                      PlayersWidget(),
                      SizedBox(
                        height: 40.h,
                      ),
                     BuildTimerWidget(),
                      if(state is TimerRunningState)
                        TimerIsRunning(second:
                        context.read<PasswordTamseeBlocCubit>().second,
                            maxSeconds: PasswordTamseeBlocCubit.maxSeconds)
                      else if(state is TimerPausedState)
                        TimerStopped(
                          second: context.read<PasswordTamseeBlocCubit>().second,
                          maxSeconds: PasswordTamseeBlocCubit.maxSeconds,)
                      else
                        TimerCompleted(
                            second: context.read<PasswordTamseeBlocCubit>().second,
                            maxSeconds: PasswordTamseeBlocCubit.maxSeconds),
                      SizedBox(
                        height: 40.h,
                      ),
                       Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: CounterWidget(
                            team1: context.read<PasswordTamseeBlocCubit>().team1,
                          team2: context.read<PasswordTamseeBlocCubit>().team2,
                          )
                      )
                    ],
                  ),
                ),
              );
              }
            ,
            listener: (context, state){

            },
          )
        ],
      ),
    );
  }
}
