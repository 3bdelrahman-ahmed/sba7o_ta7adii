import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_buttons.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class MazadCounter extends StatelessWidget {
  const MazadCounter({super.key});
  @override
  Widget build(BuildContext context){
     int seconds = context.read<LabsBlocCubit>().second;
     final int team1 = context.watch<LabsBlocCubit>().team1Mazad;
    final int team2 = context.watch<LabsBlocCubit>().team2Mazad;
    return Row(
      children:[
        Column(
          children: [
            Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("$team2",style: TextStyle(
                  fontSize: 20
              ),)),
            ),
            MazadButtons(
              team: "B",
            )
          ],
        ),
        Spacer(),
        Container(
          width: 100.w,
          height: 50.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: ColorsManager.black
          ),
          child:Center(child:Text("$seconds",style: GoogleFonts.inter(
            fontSize : 30,
            color : Colors.white
          ),))
              ,
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("$team1" ,style: TextStyle(
                fontSize: 20
              ),)),
            ),
            MazadButtons(
              team: "A",
            )
          ],
        ),
      ],
    );
  }
}
