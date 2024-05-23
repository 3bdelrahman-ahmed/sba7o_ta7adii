import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

import '../../theming/colors.dart';
import '../../theming/styles.dart';

class ShowAnswersButton extends StatelessWidget {
  const ShowAnswersButton({super.key,
    required this.isVisible,
    required this.onChange
  });
  final bool isVisible;
  final VoidCallback onChange;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChange,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.Primary.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 110.w,
        height: 40.h,
        child: Center(
            child: Text(isVisible ?"اخفاء الاجابات" : "اظهار الاجابات",
              style: Styles.instructionStyle.copyWith(
                  fontSize: 18
              ),)),
      ),
    );
  }
}
