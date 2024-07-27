import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_bloc_states.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/show_names_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/squad_name_widget.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/widget/squad_photo_widget.dart';

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
        onChanged: () => context.read<MeenXelsoraBlocCubit>().getSquad(),
      ),
      widget: BlocConsumer<MeenXelsoraBlocCubit, MeenXelsoraBlocStates>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Colors.white,
              ),
            );
          } else {
            return Column(
              children: [
                SquadPhoto(),
                SizedBox(
                  height: 15.h,
                ),
                SquadName(),
                ShowAnswersButton(
                  isVisible: context.read<MeenXelsoraBlocCubit>().isVisible,
                  onChange: ()=>context.read<MeenXelsoraBlocCubit>().changeVisibility(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ShowAnswers(
                  isVisible: context.read<MeenXelsoraBlocCubit>().isVisible,
                  Answers: context.read<MeenXelsoraBlocCubit>().players,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CounterTeamWidget(
                    team1: context.read<MeenXelsoraBlocCubit>().team1,
                    team2: context.read<MeenXelsoraBlocCubit>().team2,
                    onIncteamA: () => context
                        .read<MeenXelsoraBlocCubit>()
                        .teamsIncreament('A'),
                    onIncteamB: () => context
                        .read<MeenXelsoraBlocCubit>()
                        .teamsIncreament('B'),
                    onDecteamA: () => context
                        .read<MeenXelsoraBlocCubit>()
                        .teamsDecreament('A'),
                    onDecteamB: () => context
                        .read<MeenXelsoraBlocCubit>()
                        .teamsDecreament('B')),
              ],
            );
          }
        },
        listener: (context, state) {},
      ),
    ));
  }
}
