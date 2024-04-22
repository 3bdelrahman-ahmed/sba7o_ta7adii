import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../theming/colors.dart';
import '../../theming/styles.dart';

class CounterTeamWidget extends StatelessWidget {
  int team1;
  int team2;
  VoidCallback? onIncteamA;
  VoidCallback? onIncteamB;
  VoidCallback? onDecteamA;
  VoidCallback? onDecteamB;

  CounterTeamWidget({
   required this.team1,
   required this.team2,
    required this.onIncteamA,
    required this.onIncteamB,
    required this.onDecteamA,
    required this.onDecteamB
});
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 150.h,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("الفريق التاني",style: Styles.instructionStyle,),
              SizedBox(height: 3.h,),
              Container(
                width: 60.w,
                height: 60.h,
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
                    onTap:onDecteamB,
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
                    onTap:onIncteamB,
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
                width: 60.w,
                height: 60.h,
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
                    onTap:onDecteamA,
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
                    onTap:onIncteamA,
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
      ),
    );
  }
}
