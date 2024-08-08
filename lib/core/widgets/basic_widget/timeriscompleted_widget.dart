
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../../../../../core/service/cubit/password_and_tamseel_cubit.dart';

class TimerCompleted extends StatelessWidget {
  TimerCompleted({
    required this.second,
    required this.maxSeconds
  });
 final int second;
 final int maxSeconds;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        40.height
        ,GestureDetector(
      onTap:  () {
        context.read<PasswordAndTamseelCubit>().startTimer();
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
              style: TextStyles.homeStyle,)),
      ),
    )]
    );
  }
}
