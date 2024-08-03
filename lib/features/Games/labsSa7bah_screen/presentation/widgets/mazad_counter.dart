import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_buttons.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_team_column.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class MazadCounter extends StatelessWidget {
  const MazadCounter({super.key});

  @override
  Widget build(BuildContext context) {
    int seconds = context.read<LabsCubit>().second;
    final int team1 = context.watch<LabsCubit>().team1Mazad;
    final int team2 = context.watch<LabsCubit>().team2Mazad;
    return Row(
      children: [
        MazadTeamColumn(teamMazad: team2, teamCharacter: "B"),
        Spacer(),
        Column(
          children: [
            Container(
                width: 100.w,
                height: 50.w,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: ColorsManager.black),
                child: Center(
                    child: Text(
                  "$seconds",
                  style: GoogleFonts.inter(fontSize: 30, color: Colors.white),
                ))),
            10.height,
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 70.w,
              height: 45.h,
              child: Center(
                  child: Text(
                AppStrings.ha3eed,
                style: TextStyles.homeStyle,
              )),
            ).onTap(context.read<LabsCubit>().resetTimer),
          ],
        ),
        Spacer(),
        MazadTeamColumn(teamMazad: team1, teamCharacter: "A")
      ],
    );
  }
}
