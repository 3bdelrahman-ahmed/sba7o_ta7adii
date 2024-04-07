import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../theming/colors.dart';
import '../../theming/styles.dart';

class CounterWidget extends StatelessWidget {
  int team1;
  int team2;
  CounterWidget({
   required this.team1,
   required this.team2
});
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("الفريق التاني",style: Styles.instructionStyle,),
            SizedBox(height: 3.h,),
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$team2",style: GoogleFonts.roboto(
                color : ColorsManager.Primary,
                fontSize: 24,
              ),)),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                GestureDetector(
                  onTap:(){
                   context.read<PasswordTamseeBlocCubit>().teamsDecreament("B");
                         },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 40.w,
                    height: 40.h,
                    child: Center(
                        child: Text("-",
                          style: Styles.homeStyle,)),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap:(){
                    context.read<PasswordTamseeBlocCubit>().teamsIncreament("B");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 40.w,
                    height: 40.h,
                    child: Center(
                        child: Text("+",
                          style: Styles.homeStyle,)),
                  ),
                )

              ],
            )
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text("الفريق الأول",style: Styles.instructionStyle,),
            SizedBox(height: 3.h,),
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$team1",style: GoogleFonts.roboto(
                color : ColorsManager.Primary,
                fontSize: 24,
              ),)),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                GestureDetector(
                  onTap:(){
                    context.read<PasswordTamseeBlocCubit>().teamsDecreament('A');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 40.w,
                    height: 40.h,
                    child: Center(
                        child: Text("-",
                          style: Styles.homeStyle,)),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap:(){
                    context.read<PasswordTamseeBlocCubit>().teamsIncreament('A');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 40.w,
                    height: 40.h,
                    child: Center(
                        child: Text("+",
                          style: Styles.homeStyle,)),
                  ),
                )

              ],
            )
          ],
        ),
      ],
    );
  }
}
