import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
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
  int selector=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image with Blur
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
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          // Centered Image with Blur
          Center(
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Image.asset(
                'assets/noso7y.png',
                scale: 7.5,
              ),
            ),
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.sp),
                child: Text(
                  "اسئلتك",
                  style: Styles.headingStyle,
                ),
              ),
              SafeArea(
                child: Container(
                  width: 350.w,
                  height: 180.h,
                  child: ListWheelScrollViewX(
                    onSelectedItemChanged: (value) => setState(() {
                      selector=value;
                    }),
                    controller: FixedExtentScrollController(),
                    perspective: 0.0095,
                    scrollDirection: Axis.horizontal,
                    itemExtent: 225.w,
                      diameterRatio: 2.5,
                      squeeze: 1.2,
                     children: 
                     List.generate(GamesNames.gameNames.length-1, (index) {
                
                      return
                   GestureDetector(
                    onTap: () => print(selector),
                     child: GameCard(
                          height: 130,
                          width: 90,
                                 gameTitle: GamesNames.gameNames[index],
                                 instructionText: InstructionsList.instr[index],
                                 gamePho: GamesBackGrounds.gamesBG[index],
                         ),
                   );
                     
                     }
                     ),
                     
                     ),
                ),
              ),
             Container(
                child: Text(
                  "اضافة سؤال",
                  style: Styles.headingStyle,
                ),
              ),
                const SizedBox(height: 10,),

                   Container(
                    padding: const EdgeInsets.all(8),
                        width:const ScreenUtilInit().designSize.width,
                        height: 300.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(13),right: Radius.circular(13)),
                          color:  Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        child: AudinceChallenge.screens[selector],
                      ),
            ],
          ),
        ],
      ),
    );
  }

}
