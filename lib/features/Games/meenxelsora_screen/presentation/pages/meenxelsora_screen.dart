import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'dart:ui' as ui;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_bloc_states.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/players_buttons_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/show_names_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/squad_name_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/squad_photo_widget.dart';

class MeenXelsoraScreen extends StatefulWidget {
 const MeenXelsoraScreen({super.key});

  @override
  State<MeenXelsoraScreen> createState() => _MeenXelsoraScreenState();
}

class _MeenXelsoraScreenState extends State<MeenXelsoraScreen> {
  bool isVisible = false;
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
        BlocConsumer<MeenXelsoraBlocCubit,MeenXelsoraBlocStates>(builder: (context, state){
           if (state is LoadingState) {
             return const Center(
               child: CircularProgressIndicator
                 (strokeWidth: 54,backgroundColor: Colors.white,),
             );
           } else {
             return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children:[
                ChangeWidget(onChanged:()=> context.read<MeenXelsoraBlocCubit>().getSquad(),),
               SquadPhoto(),
                SizedBox(
                  height: 20.h,
                ),
               SquadName(),
                PlayersButton(),
                SizedBox(
                  height: 20.h,
                ),
                 ShowNames(),
                 Spacer(),
                CounterTeamWidget(
                    team1: context.read<MeenXelsoraBlocCubit>().team1,
                    team2: context.read<MeenXelsoraBlocCubit>().team2,
                    onIncteamA: ()=> context.read<MeenXelsoraBlocCubit>().teamsIncreament('A'),
                    onIncteamB: ()=> context.read<MeenXelsoraBlocCubit>().teamsIncreament('B'),
                    onDecteamA: ()=> context.read<MeenXelsoraBlocCubit>().teamsDecreament('A'),
                    onDecteamB: ()=> context.read<MeenXelsoraBlocCubit>().teamsDecreament('B'))
              ],
            ),
          );
           }
        }, listener: (context, state) {

        },)
      ]
    ));
  }
}
