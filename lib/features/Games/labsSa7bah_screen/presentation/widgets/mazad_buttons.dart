import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class MazadButtons extends StatelessWidget {
  const MazadButtons({super.key, required this.team});

  final String team;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => team == 'A'
              ? context.read<LabsBlocCubit>().mazadDecreament(team)
              : context.read<LabsBlocCubit>().mazadDecreament("B"),
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.Primary,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 45.w,
            height: 45.h,
            child: Center(
                child: Text(
              "-",
              style: Styles.homeStyle,
            )),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: () => team == 'A'
              ? context.read<LabsBlocCubit>().mazadIncreament(team)
              : context.read<LabsBlocCubit>().mazadIncreament("B"),
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.Primary,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 45.w,
            height: 45.h,
            child: Center(
                child: Text(
              "+",
              style: Styles.homeStyle,
            )),
          ),
        )
      ],
    );
  }
}
