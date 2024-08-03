import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';


import '../../utils/colors.dart';
import '../../utils/styles.dart';

class ShowAnswersButton extends StatelessWidget {
  const ShowAnswersButton({super.key,
    required this.isVisible,
    required this.onChange
  });
  final bool isVisible;
  final VoidCallback onChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.Primary.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 110.w,
      height: 40.h,
      child: Center(
          child: Text(isVisible ?AppStrings.hideAnswers : AppStrings.showAnswers,
            style: TextStyles.instructionStyle.copyWith(
                fontSize: 18
            ),)),
    ).onTap(onChange);
  }
}
