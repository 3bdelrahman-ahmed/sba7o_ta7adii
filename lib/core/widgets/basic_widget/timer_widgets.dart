
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../utils/colors.dart';

class BuildTimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 80.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: context.read<PasswordAndTamseelCubit>().second/PasswordAndTamseelCubit.maxSeconds,
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            backgroundColor: ColorsManager.Primary,
          ),
          Center(
            child: Text("${context.read<PasswordAndTamseelCubit>().second}",style: TextStyle(
                fontSize: 50,
                color: Colors.white
            ),),
          ),
        ],
      ),
    )
    ;
  }
}