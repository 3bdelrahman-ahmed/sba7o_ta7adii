import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/arrows_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/counter_teams_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/layout_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/widgets/tableof_clues.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/answer_button_widget.dart';

import 'dart:ui' as ui;

import '../../../../../core/theming/colors.dart';
import '../../../passwordchallenge_screen/presentation/widgets/playername_button.dart';
import '../manager/cubit/meenana_cubit.dart';
import '../manager/cubit/meenana_states.dart';
import '../widgets/Clues_widget.dart';

class MeenAnaScreen extends StatelessWidget {
  const MeenAnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutWidget(
      buttonWidget: ChangeWidget(onChanged:() => context.read<MeenAnaBlocCubit>().getMeenAnaPlayer()),
      widget: BlocConsumer<MeenAnaBlocCubit, MeenAnaBlocStates>(
        builder: (context, state) {
          if(state is LoadingState)
            {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            }
          return Column(
            children: [
              CluesWidget(),
              SizedBox(
                height: 10.h,
              ),
            GestureDetector(
              onTap:() => context.read<MeenAnaBlocCubit>().addingclue(),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_sharp,color: Colors.white,size: 40,),
                 Text("الكلو التالي",style: Styles.homeStyle,)],
              ),
            ),
              PlayerClueButton(),
            TableOfClues()
            ],
          );
        },
        listener: (context, state) {},
      ),
    ));
  }
}
