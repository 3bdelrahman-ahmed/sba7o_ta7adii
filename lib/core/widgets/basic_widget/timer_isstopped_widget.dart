import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../utils/app_strings.dart';
import '../../utils/colors.dart';
import '../../utils/styles.dart';

class TimerStopped extends StatelessWidget {
  TimerStopped({required this.second, required this.maxSeconds});

  final int second;
  final int maxSeconds;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        40.height,
        Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: ColorsManager.Primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 100.w,
                height: 50.h,
                child: Center(
                  child: Text(AppStrings.continueTimer, style: TextStyles.homeStyle),
                )).onTap(() {
              context.read<PasswordAndTamseelCubit>().startTimer(reset: false);
            }),
            10.width,
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 100.w,
              height: 50.h,
              child: Center(
                  child: Text(
                AppStrings.stopTimer,
                style: TextStyles.homeStyle,
              )),
            ).onTap( () {
              context.read<PasswordAndTamseelCubit>().stopTimer();
            }),
          ],
        ))
      ],
    );
  }
}
