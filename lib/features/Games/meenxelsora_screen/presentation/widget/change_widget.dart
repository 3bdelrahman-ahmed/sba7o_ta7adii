import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';

import '../../../../../core/theming/styles.dart';

class ChangeSquadWidget extends StatelessWidget {
  const ChangeSquadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: (){
                        context.read<MeenXelsoraBlocCubit>().getSquad();
                      },
                      icon: Icon(
                        Icons.change_circle,
                        color: Colors.red,
                        size: 40,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "تغيير التشكيلة",
                      style: Styles.instructionStyle
                          .copyWith(fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          )
        ]);  }
}
