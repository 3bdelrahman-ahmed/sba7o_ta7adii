import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class ShowNames extends StatelessWidget {
  const ShowNames({super.key});

  @override
  Widget build(BuildContext context) {
    String? Players = context.read<MeenXelsoraBlocCubit>().players;
    return Visibility(visible: context.read<MeenXelsoraBlocCubit>().isVisible,
      maintainSize: true,
      maintainState: true,
      maintainAnimation: true,
      child: Container(
        width: 340.w,
        height: 150.h,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(Players! ,
              textDirection: TextDirection.rtl,
              style: Styles.instructionStyle,),
          ),
        ),
      ),);
  }
}
