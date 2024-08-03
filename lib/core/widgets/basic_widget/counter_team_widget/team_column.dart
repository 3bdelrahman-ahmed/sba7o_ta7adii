import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/colors.dart';
import '../../../utils/styles.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn(
      {super.key,
      required this.teamName,
      required this.teamCounter,
      required this.onIncTeam,
      required this.onDecTeam});

  final String teamName;
  final int teamCounter;
    final VoidCallback? onIncTeam;
  final VoidCallback? onDecTeam;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: TextStyles.instructionStyle,
        ),
        3.height,
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text("$teamCounter", style: TextStyles.counterNumberStyle)),
        ),
        10.height,
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 40.w,
              height: 40.h,
              child: Center(
                  child: Text(
                AppStrings.minusSign,
                style: TextStyles.homeStyle,
              )),
            ).onTap(onDecTeam),
            10.width,
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 40.w,
              height: 40.h,
              child: Center(
                  child: Text(
                AppStrings.plusSign,
                style: TextStyles.homeStyle,
              )),
            ).onTap(onIncTeam)
          ],
        )
      ],
    );
  }
}
