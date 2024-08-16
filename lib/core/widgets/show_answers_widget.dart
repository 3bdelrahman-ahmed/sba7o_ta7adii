import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/cubit/app_cubit.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/utils/colors.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';

class ShowAnswersWidget extends StatelessWidget {
  String answers;

  ShowAnswersWidget({super.key, required this.answers});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      backgroundColor: ColorsManager.white.withOpacity(0.5),
      trailing: Icon(
        context.watch<AppCubit>().showAnswers
            ? Icons.arrow_drop_up
            : Icons.arrow_drop_down,
        color: ColorsManager.white,
        size: 25.w,
      ),
      onExpansionChanged: (value) {
        context.read<AppCubit>().showAndHideAnswers();
      },
      title: Text(
          context.watch<AppCubit>().showAnswers
              ? AppStrings.hideAnswers
              : AppStrings.showAnswers,
          style: TextStyles.instructionStyle),
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          width: double.infinity,
          height: 100.h,
          child: SingleChildScrollView(
              child: Text(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  answers,
                  style:
                      TextStyles.instructionStyle.copyWith(fontSize: 20.sp))),
        )
      ],
    );
  }
}
