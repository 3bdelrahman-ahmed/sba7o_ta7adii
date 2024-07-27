import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_cubit.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CounterWidget extends StatelessWidget {
   CounterWidget({required this.counter});
 int counter;

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Text("المزاد",style: Styles.instructionStyle.copyWith(
            fontSize: 30
          ),),
          Container(
            width: 100.w,
            height: 90.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Center(child: Text("$counter",style: GoogleFonts.roboto(
              color : ColorsManager.Primary,
              fontSize: 35,
            ),)),
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap:(){
                  context.read<ArostyBlocCubit>().counterState("");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.Primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 45.w,
                  height: 45.h,
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
                  context.read<ArostyBlocCubit>().counterState("Inc");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.Primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 45.w,
                  height: 45.h,
                  child: Center(
                      child: Text("+",
                        style: Styles.homeStyle,)),
                ),
              )
            ],
          )
        ],
      );
  }
}
