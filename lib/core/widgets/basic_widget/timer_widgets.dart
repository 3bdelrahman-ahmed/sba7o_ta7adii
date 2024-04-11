import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../../../../core/theming/colors.dart';

class BuildTimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return   SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: context.read<PasswordTamseeBlocCubit>().second/PasswordTamseeBlocCubit.maxSeconds,
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            backgroundColor: ColorsManager.Primary,
          ),
          Center(
            child: Text("${context.read<PasswordTamseeBlocCubit>().second}",style: TextStyle(
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