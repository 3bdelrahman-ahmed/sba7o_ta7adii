import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/config/app_routes.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/core/utils/colors.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_team_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_shimmer_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/dialogs/app_dialog.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_states.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/mazad_counter.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/quest_widget.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/widgets/start_to_play.dart';

import '../../../../../core/widgets/layout_widget.dart';
import '../../../../../core/widgets/show_answers_widget.dart';
import '../../../meenxelsora_screen/presentation/widget/show_names_widget.dart';

class LabsSa7bkScreen extends StatefulWidget {
  const LabsSa7bkScreen({super.key});

  @override
  State<LabsSa7bkScreen> createState() => _LabsSa7bkScreenState();
}

class _LabsSa7bkScreenState extends State<LabsSa7bkScreen> {
  @override
  void initState() {
    context.read<LabsCubit>().getQuest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var labsCubit = context.read<LabsCubit>();
    return WillPopScope(
      onWillPop: () async {
        AppDialog.textDialog(
            confirmColor: ColorsManager.red,
            cancelBorderColor: Colors.black,
            context: context,
            onConfirm: () {
              labsCubit.labsDm = null;
              labsCubit.team1 = 0;
              labsCubit.team2 = 0;
              Navigator.pushReplacementNamed(context, AppRouting.homeScreen);
            },
            onCancel: () {
              Navigator.pop(context);
            },
            title: AppStrings.areYouSureToLeaveTheGame);
        return false;
      },
      child: Scaffold(
        body: LayoutWidget(
          buttonWidget: ChangeWidget(onChanged: () => labsCubit.getQuest()),
          widget: Column(
            children: [
              BlocBuilder<LabsCubit, LabsStates>(
                builder: (context, state) {
                  if (labsCubit.labsDm != null) {
                    return QuestionWidget().paddingSymmetric(horizontal: 16.w);
                  }

                  return CustomShimmer(
                      child: Container(
                    width: ScreenUtil.defaultSize.width,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                      color: ColorsManager.Primary,
                    ),
                  )).paddingSymmetric(horizontal: 16.w);
                },
              ),
               ShowAnswersWidget(answers: context.watch<LabsCubit>().answers ?? "").paddingSymmetric(horizontal: 16.w,vertical: 12.h),

              MazadCounter(),
              12.height,
              StartGame(),
              24.height,
              CounterTeamWidget(
                  team1: labsCubit.team1,
                  team2: labsCubit.team2,
                  onIncTeamA: () => labsCubit.teamsIncreament('A'),
                  onIncTeamB: () => labsCubit.teamsIncreament('B'),
                  onDecTeamA: () => labsCubit.teamsDecreament('A'),
                  onDecTeamB: () => labsCubit.teamsDecreament('B')),
            ],
          ),
        ),
      ),
    );
  }
}
