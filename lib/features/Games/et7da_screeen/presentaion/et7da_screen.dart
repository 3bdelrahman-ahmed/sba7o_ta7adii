import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_assets.dart';
import 'package:spa7o_ta7adii/core/widgets/app_default_image_view.dart';
import 'package:spa7o_ta7adii/core/widgets/home_screen_widgets/game_card_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/static/et7da_screens_list.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';

import '../../../../core/widgets/static/games_BG.dart';
import '../../../../core/widgets/static/games_instr.dart';

class ChallengeAudience extends StatefulWidget {
  @override
  _ChallengeAudienceState createState() => _ChallengeAudienceState();
}

class _ChallengeAudienceState extends State<ChallengeAudience> {
  String selectedAudience = "اختار اللعبة"; // Default value
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selector = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: _scaffoldKey,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image with Blur
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: AppDefaultImageView(
                  imagePath: AppAssets.stadium,
                ),
              )),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          // Centered Image with Blur
          SizedBox(
            width: 250.w,
            height: 250.h,
            child: Center(
              child: ImageFiltered(
                  imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: AppDefaultImageView(
                    imagePath: AppAssets.spa7o,
                  )),
            ),
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.sp),
                child: Text(
                  "اسئلتك",
                  style: TextStyles.headingStyle,
                ),
              ),
              SafeArea(
                child: SizedBox(
                  width: 350.w,
                  height: 180.h,
                  child: ListWheelScrollViewX(
                    onSelectedItemChanged: (value) => setState(() {
                      selector = value;
                    }),
                    controller: FixedExtentScrollController(),
                    perspective: 0.0095,
                    scrollDirection: Axis.horizontal,
                    itemExtent: 225.w,
                    diameterRatio: 2.5,
                    squeeze: 1.2,
                    children:
                        List.generate(GamesNames.gameNames.length - 1, (index) {
                      return GestureDetector(
                        onTap: () => print(selector),
                        child: GameCard(
                          height: 130.h,
                          width: 90.w,
                          gameTitle: GamesNames.gameNames[index],
                          instructionText: InstructionsList.instr[index],
                          gamePho: GamesBackGrounds.gamesBG[index],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "اضافة سؤال",
                  style: TextStyles.headingStyle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:  EdgeInsets.all(8.w),
                width: const ScreenUtilInit().designSize.width,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(13.w),
                      right: Radius.circular(13.w)),
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                ),
                child: AudinceChallenge.screens[selector],
              ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
            ],
          ),
        ],
      ),
    );
  }
}
