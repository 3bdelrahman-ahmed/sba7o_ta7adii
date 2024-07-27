import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class ShowAnswers extends StatelessWidget {
  const ShowAnswers({super.key,
  required this.isVisible,
  required this.Answers});
  final String? Answers;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Visibility(visible: isVisible,
      maintainSize: true,
      maintainState: true,
      maintainAnimation: true,
      child: Container(
        width: 340.w,
        height: 160.h,
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
            child: Text(Answers ?? " Error",
              textDirection: TextDirection.rtl,
              style: Styles.instructionStyle,),
          ),
        ),
      ),);
  }
}
