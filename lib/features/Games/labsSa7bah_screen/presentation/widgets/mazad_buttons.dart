import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class MazadButtons extends StatelessWidget {
  const MazadButtons({super.key, required this.team});

  final String team;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.Primary,
            borderRadius: BorderRadius.circular(20),
          ),
          width: 45.w,
          height: 45.h,
          child: Center(
              child: Text(
            AppStrings.minusSign,
            style: TextStyles.homeStyle,
          )),
        ).onTap(() => team == 'A'
            ? context.read<LabsCubit>().mazadDecreament(team)
            : context.read<LabsCubit>().mazadDecreament("B")),
        10.width,
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.Primary,
            borderRadius: BorderRadius.circular(20),
          ),
          width: 45.w,
          height: 45.h,
          child: Center(
              child: Text(
            AppStrings.plusSign,
            style: TextStyles.homeStyle,
          )),
        ).onTap(() => team == 'A'
            ? context.read<LabsCubit>().mazadIncreament(team)
            : context.read<LabsCubit>().mazadIncreament("B"))
      ],
    );
  }
}
