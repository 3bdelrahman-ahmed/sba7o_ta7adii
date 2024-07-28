import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/manager/cubit/meenana_cubit.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CluesWidget extends StatelessWidget {
  const CluesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    int index = context.read<MeenAnaCubit>().index;
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: 170.h,
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
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
               context.read<MeenAnaCubit>().Clues[index] ?? "",
                style: TextStyles.CluesStyle.copyWith(
                  fontSize: 22
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        )
    );
  }
}
