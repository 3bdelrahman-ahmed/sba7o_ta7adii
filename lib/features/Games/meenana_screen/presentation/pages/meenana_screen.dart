import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/arrows_widgets.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';

import 'dart:ui' as ui;

import '../../../../../core/theming/colors.dart';
import '../manager/cubit/meenana_cubit.dart';
import '../manager/cubit/meenana_states.dart';
import '../widgets/Clues_widget.dart';

class MeenAnaScreen extends StatelessWidget {
  const MeenAnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/staduim.jpeg',
          fit: BoxFit.fill,
        ),
      ),
      BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        // Adjust the sigma values for the blur intensity
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      Center(
        child: ImageFiltered(
          imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Image.asset(
            'assets/noso7y.png',
            scale: 7.5,
          ),
        ),
      ),
      BlocBuilder<MeenAnaBlocCubit, MeenAnaBlocStates>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(top: 45),
            child: Column(
              children: [
                ArrowsWidget(),
                SizedBox(
                  height: 30,
                ),
              CluesWidget(),

              ],
            ),
          );
        },
      )
    ]));
  }
}
