import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context) {
    int team2 = context.read<LabsCubit>().team2Mazad;
    int team1 = context.read<LabsCubit>().team1Mazad;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
              color: ColorsManager.Primary,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
                AppStrings.haro7,
                style: TextStyles.instructionStyle,
              )),
        ).onTap(() {
          if (team2 > 0) context.read<LabsCubit>().startTimer(teamNum: 2);
        }),
        Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
              color: ColorsManager.Primary,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
                AppStrings.haro7,
                style: TextStyles.instructionStyle,
              )),
        ).onTap(() {
          if (team1 > 0) context.read<LabsCubit>().startTimer(teamNum: 1);
        }),
      ],
    );
  }
}
