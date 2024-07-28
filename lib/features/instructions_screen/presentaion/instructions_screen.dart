import 'dart:ui' as ui;
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/theming/text_styles.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_instr.dart';
import 'package:spa7o_ta7adii/core/widgets/static/screens_list.dart';

import '../../../config/app_routes.dart';
import '../../../core/helper/gameSelector.dart';


class InstructionsScreen extends StatefulWidget {
  final int index;

  const InstructionsScreen({super.key, required this.index});

  @override
  State<InstructionsScreen> createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
  bool showContainer = false;
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showContainer = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/staduim.jpeg',
            fit: BoxFit.fill,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust the sigma values for the blur intensity
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
        Center(
          child: Container(
            padding: EdgeInsets.only(right: 5),
            height: 600.h,
              child: Column(
                children: [
                  Center(
                    child: Text(GamesNames.gameNames[widget.index],style: TextStyles.homeStyle.copyWith(
                      fontSize: 26
                    ),),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 450.h,
                    child: SingleChildScrollView(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            InstructionsList.instr[widget.index],textStyle: TextStyles.instructionStyle,
                            textAlign: TextAlign.end,
                          speed: Duration(milliseconds: 15))
                          ,
                        ],
                        displayFullTextOnTap: true,
                        repeatForever: false,
                        totalRepeatCount: 1,
                      ),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: AnimatedOpacity(
                      opacity: showContainer ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: GestureDetector(
                        onTap: () {
                          gameSelector(context: context,index: widget.index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorsManager.Primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 150.w,
                          height: 50.h,
                          child: Center(
                              child: Text("ابدء اللعب",
                          style: TextStyles.homeStyle,)),
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
        ),

      ],
    ));
  }
}
