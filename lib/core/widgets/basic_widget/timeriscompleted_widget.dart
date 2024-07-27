
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../../../../../core/service/cubit/password_and_tamseel_cubit.dart';

class TimerCompleted extends StatefulWidget {
  TimerCompleted({
    required this.second,
    required this.maxSeconds
  });
  int second;
  int maxSeconds;

  @override
  State<TimerCompleted> createState() => _TimerCompletedState();
}

class _TimerCompletedState extends State<TimerCompleted> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40.h,
        )
        ,GestureDetector(
      onTap:  () {
        context.read<PasswordTamseeBlocCubit>().startTimer();
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.Primary,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 100.w,
        height: 50.h,
        child: Center(
            child: Text("ابدء العد",
              style: Styles.homeStyle,)),
      ),
    )]
    );
  }
}
