import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context){
    String? question = context.watch<LabsCubit>().question;
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: 80.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
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
                question ?? "Error",
                style: TextStyles.CluesStyle.copyWith(fontSize: 22),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ));

  }
}
