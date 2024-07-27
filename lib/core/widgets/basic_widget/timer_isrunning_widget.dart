import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../../service/cubit/password_and_tamseel_cubit.dart';

class TimerIsRunning extends StatelessWidget {
  TimerIsRunning({
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
                    context.read<PasswordTamseeBlocCubit>().stopTimer(reset: false);
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.Primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 100.w,
                    height: 50.h,
                    child: Center(
                      child: Text("توقف",style: Styles.homeStyle)
                    )),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: () {
                  context.read<PasswordTamseeBlocCubit>().stopTimer();
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
                        style: Styles.homeStyle,)),
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}
