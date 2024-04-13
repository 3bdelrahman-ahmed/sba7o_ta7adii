import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class PlayersButton extends StatelessWidget {
  const PlayersButton({super.key});
  @override
  Widget build(BuildContext context) {
    bool isVisible = context.read<MeenXelsoraBlocCubit>().isVisible;
    return GestureDetector(
      onTap: ()=>context.read<MeenXelsoraBlocCubit>().changeVisibility(),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.Primary.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 110.w,
        height: 40.h,
        child: Center(
            child: Text(isVisible ?"اخفاء الاسامي" : "اسامي اللاعبين",
              style: Styles.instructionStyle.copyWith(
                  fontSize: 18
              ),)),
      ),
    );
  }
}
