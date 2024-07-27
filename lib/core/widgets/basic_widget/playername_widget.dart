import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/utils/colors.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

class PlayersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? name;
  name = context.read<PasswordTamseeBlocCubit>().name;
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: 200.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff181d3c),
                Color(0xff181d3c).withOpacity(0.5),
                ColorsManager.Primary.withOpacity(0.3)
              ]),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
              "${name}",
              style: Styles.homeStyle,
            ))
    );
  }
}
