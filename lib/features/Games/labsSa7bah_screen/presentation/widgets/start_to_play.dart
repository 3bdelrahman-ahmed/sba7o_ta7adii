import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context){
    int team2 = context.read<LabsBlocCubit>().team2Mazad;
    int team1 = context.read<LabsBlocCubit>().team1Mazad;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () { if(team2>0)
            context.read<LabsBlocCubit>().startTimer(
              teamNum: 2
            );
            },
          child: Container(
            width: 100,
            height: 70,
            decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text("هروح",style: Styles.instructionStyle,)),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (team1 > 0) context.read<LabsBlocCubit>().startTimer(
              teamNum: 1
            );},
          child: Container(
            width: 100,
            height: 70,
            decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child:Text("هروح",style: Styles.instructionStyle,)),
          ),
        ),
      ],
    );
  }
}
