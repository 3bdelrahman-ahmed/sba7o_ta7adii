import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_bloc_states.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_counter.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/quest_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/start_to_play.dart';
import '../../../../../core/widgets/layout_widget.dart';
import '../../../meenxelsora_screen/view/widgets/show_names_widget.dart';

class LabsSa7bkScreen extends StatelessWidget {
  const LabsSa7bkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutWidget(
        buttonWidget:
            ChangeWidget(onChanged: () => context.read<LabsCubit>().getQuest()),
        widget: Column(
          children: [
            BlocBuilder<LabsCubit, LabsBlocStates>(
              builder: (context, state) {
                if (state is LoadingState)
                  return Container(
                      width: ScreenUtil.defaultSize.width,
                      height: 80.h,
                      child: const Center(
                          child: CircularProgressIndicator(
                        strokeWidth: 5,
                        backgroundColor: Colors.white,
                      )));
                else if (state is FailedGetQuest)
                  return Center(
                    child: Text(AppStrings.somethingWentWrong),
                  );
                else
                  return QuestionWidget();
              },
            ),
            10.height,
            ShowAnswersButton(
                isVisible: context.read<LabsCubit>().isVisible,
                onChange: () => context.read<LabsCubit>().changeVisibility()),
            ShowAnswers(
                isVisible: context.read<LabsCubit>().isVisible,
                Answers: context.watch<LabsCubit>().answers),
            10.height,
            MazadCounter(),
            5.height,
            StartGame(),
            25.height,
            CounterTeamWidget(
                team1: context.read<LabsCubit>().team1,
                team2: context.read<LabsCubit>().team2,
                onIncTeamA: () =>
                    context.read<LabsCubit>().teamsIncreament('A'),
                onIncTeamB: () =>
                    context.read<LabsCubit>().teamsIncreament('B'),
                onDecTeamA: () =>
                    context.read<LabsCubit>().teamsDecreament('A'),
                onDecTeamB: () =>
                    context.read<LabsCubit>().teamsDecreament('B')),
          ],
        ),
      ),
    );
  }
}
