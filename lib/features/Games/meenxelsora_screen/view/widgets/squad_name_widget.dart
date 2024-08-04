import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_cubit.dart';

import '../../../../../core/utils/styles.dart';

class SquadName extends StatelessWidget {
   SquadName({super.key});
  @override
  Widget build(BuildContext context) {
    String? team = context.watch<MeenXelsoraCubit>().team;
    return Container(
        width: ScreenUtil.defaultSize.width*.9,
        child: Text( team!,style:
        TextStyles.instructionStyle,textDirection: TextDirection.rtl,));
  }
}
