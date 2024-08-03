import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_cubit.dart';

import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_states.dart';

import '../../../../../core/widgets/basic_widget/change_widget.dart';
import '../../../../../core/widgets/basic_widget/counter_widget.dart';
import '../../../../../core/widgets/basic_widget/playername_widget.dart';
import '../../../../../core/widgets/layout_widget.dart';

class ArostyScreen extends StatelessWidget {
  const ArostyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutWidget(
      buttonWidget: ChangeWidget(
        onChanged: () {
          context.read<PasswordAndTamseelCubit>().getPlayer();
        },
      ),
      widget: BlocBuilder<ArostyCubit, ArostyBlocState>(
        builder: (context, state) {
          return BlocBuilder<PasswordAndTamseelCubit, PasswordAndTamseelStates>(
            builder: (context, stateP) {
              return Center(
                child: Column(
                  children: [
                    if (stateP is LoadingState)
                      Container(
                          width: 320.w,
                          height: 160.h,
                          child: const Center(
                              child: CircularProgressIndicator(
                            strokeWidth: 5,
                            backgroundColor: Colors.white,
                          )))
                    else if (stateP is FailedGetPlayer)
                      const Center(
                        child: Text(AppStrings.somethingWentWrong),
                      )
                    else
                      PlayersWidget(),
                    25.height,
                    CounterWidget(
                      counter: context.read<ArostyCubit>().counter,
                    ),
                    45.height,
                    CounterTeamWidget(
                      team1: context.read<ArostyCubit>().team1,
                      team2: context.read<ArostyCubit>().team2,
                      onDecTeamA: () =>
                          context.read<ArostyCubit>().teamsDecreament('A'),
                      onIncTeamA: () =>
                          context.read<ArostyCubit>().teamsIncreament('A'),
                      onDecTeamB: () =>
                          context.read<ArostyCubit>().teamsDecreament('B'),
                      onIncTeamB: () =>
                          context.read<ArostyCubit>().teamsIncreament('B'),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    ));
  }
}
