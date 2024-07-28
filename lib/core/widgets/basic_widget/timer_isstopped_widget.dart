import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/text_styles.dart';

class TimerStopped extends StatelessWidget {
  TimerStopped({
    required this.second,
    required this.maxSeconds
  });
  int second;
  int maxSeconds;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 40.h,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap :(){
                  context.read<PasswordAndTamseelCubit>().startTimer(reset: false);
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 100.w,
                    height: 50.h,
                    child: Center(
                      child:
                      Text("استكمال",style: TextStyles.homeStyle),
                    )),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: () {
                  context.read<PasswordAndTamseelCubit>().stopTimer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.Primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 100.w,
                  height: 50.h,
                  child: Center(
                      child: Text("الغاء",
                        style: TextStyles.homeStyle,)),
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}
