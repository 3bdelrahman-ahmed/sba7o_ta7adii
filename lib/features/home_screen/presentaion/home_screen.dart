import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:spa7o_ta7adii/core/utils/app_assets.dart';
import 'dart:ui' as ui;

import 'package:spa7o_ta7adii/core/widgets/home_screen_widgets/game_card_widget.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_BG.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_names.dart';
import 'package:spa7o_ta7adii/core/widgets/static/games_instr.dart';

import '../../../config/app_routes.dart';

class HomeScreen extends StatelessWidget{
    O3DController controller = O3DController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
  body: Stack(
    alignment: Alignment.center,
    children: [
      // Background Image with Blur
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          AppAssets.stadium,
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
      
      // Centered Image with Blur

Center(
  child: ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
    child: Image.asset(
      AppAssets.spa7o,
      scale: 7.5,
    ),
  ),
),
      GridView.builder
   (
    itemCount: GamesNames.gameNames.length,
    gridDelegate:
   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context,  index){
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, AppRouting.instructionScreen,
          arguments: index
          );
        },
        child: GameCard(gameTitle: GamesNames.gameNames[index], instructionText: InstructionsList.instr[index],gamePho: GamesBackGrounds.gamesBG[index],height: 100,width: 75,)
        );
    }
    )

    ],
  ),
);
  }
}













