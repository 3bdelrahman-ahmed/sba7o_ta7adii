import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/manager/cubit/meenana_cubit.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class PlayerClueButton extends StatelessWidget {
  const PlayerClueButton({super.key});
  @override
  Widget build(BuildContext context) {
    bool isVisible = context.read<MeenAnaCubit>().isVisible;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: isVisible,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff181d3c),
                      Color(0xff181d3c).withOpacity(0.5),
                      ColorsManager.Primary.withOpacity(0.3)
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 200.w,
              height: 80.h,
              child: Center(
                  child: Text(
                    context.watch<MeenAnaCubit>().player ?? AppStrings.somethingWentWrong,
                    style: TextStyles.instructionStyle.copyWith(fontSize: 20),
                  )),
            )),
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.Primary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 130.w,
          height: 50.h,
          child: Center(
              child: Text(
                isVisible ? AppStrings.hidePlayer :AppStrings.showPlayer,
                style: TextStyles.instructionStyle.copyWith(fontSize: 18),
              )),
        ).onTap(() => context.read<MeenAnaCubit>().changeVisibility()),
      ],
    );
  }
}
