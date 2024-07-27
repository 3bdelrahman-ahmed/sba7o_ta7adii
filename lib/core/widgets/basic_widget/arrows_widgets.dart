import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';

import '../../utils/styles.dart';

class ArrowsWidget extends StatelessWidget {
  const ArrowsWidget({super.key});

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
                  context.read<PasswordTamseeBlocCubit>().getPlayer();
                },
                icon: const Icon(
                  Icons.repeat_on_outlined,
                  color: Colors.red,
                  size: 40,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "تغير",
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
