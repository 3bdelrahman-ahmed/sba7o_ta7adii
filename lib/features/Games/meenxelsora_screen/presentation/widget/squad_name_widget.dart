import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

import '../../../../../core/theming/styles.dart';

class SquadName extends StatelessWidget {
   SquadName({super.key});
  @override
  Widget build(BuildContext context) {
    String? team = context.watch<MeenXelsoraBlocCubit>().team;
    return Container(
        width: MediaQuery.sizeOf(context).width*.9,
        child: Text( team!,style:
        Styles.instructionStyle,textDirection: TextDirection.rtl,));
  }
}
