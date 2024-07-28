import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_bloc_states.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_counter.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/quest_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/start_to_play.dart';
import '../../../../../core/widgets/custom_shimmer_widget.dart';
import '../../../../../core/widgets/layout_widget.dart';
import '../../../meenxelsora_screen/presentation/widget/show_names_widget.dart';

class LabsSa7bkScreen extends StatelessWidget {
  const LabsSa7bkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutWidget(
        buttonWidget: ChangeWidget(
            onChanged: () => context.read<LabsCubit>().getQuest()),
        widget: Column(
          children: [
            BlocBuilder<LabsCubit, LabsBlocStates>(
              builder: (context, state) {
                if (state is LoadingState)
                  return CustomShimmer(child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80.h,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(10.w),right: Radius.circular(10.w))
                    ),
                  ));
                else if (state is FailedGetQuest)
                  return Center(
                    child: Text("Something went wrong"),
                  );
                else
                  return QuestionWidget();
              },
            ),
            SizedBox(
              height: 10,
            ),
            ShowAnswersButton(
                isVisible: context.read<LabsCubit>().isVisible,
                onChange: () =>
                    context.read<LabsCubit>().changeVisibility()),
            ShowAnswers(
                isVisible: context.read<LabsCubit>().isVisible,
                Answers: context.watch<LabsCubit>().answers),
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
                team1: context.read<LabsCubit>().team1,
                team2: context.read<LabsCubit>().team2,
                onIncteamA: () => context
                    .read<LabsCubit>()
                    .teamsIncreament('A'),
                onIncteamB: () => context
                    .read<LabsCubit>()
                    .teamsIncreament('B'),
                onDecteamA: () => context
                    .read<LabsCubit>()
                    .teamsDecreament('A'),
                onDecteamB: () => context
                    .read<LabsCubit>()
                    .teamsDecreament('B')),
          ],
        ),
      ),
    );
  }
}
