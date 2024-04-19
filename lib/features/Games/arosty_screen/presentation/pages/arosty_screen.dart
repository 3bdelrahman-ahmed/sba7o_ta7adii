import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/arrows_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_cubit.dart';
import 'dart:ui' as ui;

import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_states.dart';

import '../../../../../core/widgets/basic_widget/change_widget.dart';
import '../../../../../core/widgets/basic_widget/counter_widget.dart';
import '../../../../../core/widgets/basic_widget/playername_widget.dart';

class ArostyScreen extends StatelessWidget {
  const ArostyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
          BlocConsumer<ArostyBlocCubit,ArostyBlocState>(builder: (context, stateA) {
           return BlocBuilder<PasswordTamseeBlocCubit,PasswordTamseelBlocState>(builder: (context, stateP) {
             return Center(
               child: Padding(
                 padding: EdgeInsets.only(top:45),
                 child: Column(
                   children: [
                     ChangeWidget(onChanged:()=> context.read<PasswordTamseeBlocCubit>().getPlayer()),
                 SizedBox(
                       height: 50,
                     ),
                     if(stateP is LoadingState)
                       Container(
                           width: 320.w,
                           height: 160.h,
                           child: Center(child:
                           CircularProgressIndicator
                             (strokeWidth: 5,backgroundColor: Colors.white,)))
                     else if (stateP is FailedGetPlayer)
                       Center(child: Text("Something went wrong"),)
                     else
                       PlayersWidget(),
                     SizedBox(
                       height: 25.h,
                     ),
                    CounterWidget(
                      counter:context.read<ArostyBlocCubit>().counter,
                    ),
                     SizedBox(
                       height: 45.h,
                     ),
                     CounterTeamWidget(
                       team1: context.read<ArostyBlocCubit>().team1,
                       team2: context.read<ArostyBlocCubit>().team2,
                       onDecteamA: ()=>context.read<ArostyBlocCubit>().teamsDecreament('A'),
                       onIncteamA: ()=>context.read<ArostyBlocCubit>().teamsIncreament('A'),
                       onDecteamB: ()=>context.read<ArostyBlocCubit>().teamsDecreament('B'),
                       onIncteamB: ()=>context.read<ArostyBlocCubit>().teamsIncreament('B'),
                     )
                   ],
                 ),
               ),
             );

           },);
          }, listener: (context, state) {

          },)
    ]));
  }
}
