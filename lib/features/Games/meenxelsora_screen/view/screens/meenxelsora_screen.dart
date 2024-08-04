import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/counter_teams_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_states.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_cubit.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view/widgets/show_names_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view/widgets/squad_name_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view/widgets/squad_photo_widget.dart';

import '../../../../../core/widgets/layout_widget.dart';

class MeenXelsoraScreen extends StatefulWidget {
  const MeenXelsoraScreen({super.key});

  @override
  State<MeenXelsoraScreen> createState() => _MeenXelsoraScreenState();
}

class _MeenXelsoraScreenState extends State<MeenXelsoraScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutWidget(
      buttonWidget: ChangeWidget(
        onChanged: () => context.read<MeenXelsoraCubit>().getSquad(),
      ),
      widget: BlocConsumer<MeenXelsoraCubit, MeenXelsoraBlocStates>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            );
          }
            return Column(
              children: [
                SquadPhoto(),
                15.height,
                SquadName(),
                ShowAnswersButton(
                  isVisible: context.read<MeenXelsoraCubit>().isVisible,
                  onChange: () =>
                      context.read<MeenXelsoraCubit>().changeVisibility(),
                ),
                10.height,
                ShowAnswers(
                  isVisible: context.read<MeenXelsoraCubit>().isVisible,
                  Answers: context.read<MeenXelsoraCubit>().players,
                ),
                10.height,
                CounterTeamWidget(
                    team1: context.read<MeenXelsoraCubit>().team1,
                    team2: context.read<MeenXelsoraCubit>().team2,
                    onIncTeamA: () =>
                        context.read<MeenXelsoraCubit>().teamsIncreament('A'),
                    onIncTeamB: () =>
                        context.read<MeenXelsoraCubit>().teamsIncreament('B'),
                    onDecTeamA: () =>
                        context.read<MeenXelsoraCubit>().teamsDecreament('A'),
                    onDecTeamB: () =>
                        context.read<MeenXelsoraCubit>().teamsDecreament('B')),
              ],
            );

        },
        listener: (context, state) {},
      ),
    ));
  }
}
