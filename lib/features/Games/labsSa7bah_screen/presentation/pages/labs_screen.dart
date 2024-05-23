import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/playername_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_bloc_states.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_counter.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/quest_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/start_to_play.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/layout_widget.dart';
import '../../../meenxelsora_screen/presentation/widget/show_names_widget.dart';

class LabsSa7bkScreen extends StatelessWidget {
  const LabsSa7bkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutWidget(
        buttonWidget: ChangeWidget(
            onChanged: () => context.read<LabsBlocCubit>().getQuest()),
        widget: BlocBuilder<LabsBlocCubit, LabsBlocStates>(
          builder: (context, state) {
            if (state is LoadingState)
              return Container(
                  width: 320.w,
                  height: 200.h,
                  child: Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 5,
                    backgroundColor: Colors.white,
                  )));
            else if (state is FailedGetQuest)
              return Center(
                child: Text("Something went wrong"),
              );
            else
              return Column(
                children: [
                  QuestionWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  ShowAnswersButton(
                      isVisible: context.read<LabsBlocCubit>().isVisible,
                      onChange: () =>
                          context.read<LabsBlocCubit>().changeVisibility()),
                  ShowAnswers(
                    isVisible: context.read<LabsBlocCubit>().isVisible,
                    Answers: context.watch<LabsBlocCubit>().answers),
                  SizedBox(
                    height: 10.h,
                  ),
                  MazadCounter(),
                  SizedBox(
                    height: 5.h,
                  ),
                  StartGame(),
                  SizedBox(
                    height: 25.h,
                  ),
                  CounterTeamWidget(
                      team1: context.read<LabsBlocCubit>().team1,
                      team2: context.read<LabsBlocCubit>().team2,
                      onIncteamA: () => context
                          .read<LabsBlocCubit>()
                          .teamsIncreament('A'),
                      onIncteamB: () => context
                          .read<LabsBlocCubit>()
                          .teamsIncreament('B'),
                      onDecteamA: () => context
                          .read<LabsBlocCubit>()
                          .teamsDecreament('A'),
                      onDecteamB: () => context
                          .read<LabsBlocCubit>()
                          .teamsDecreament('B')),
                ],
              );
          },
        ),
      ),
    );
  }
}
