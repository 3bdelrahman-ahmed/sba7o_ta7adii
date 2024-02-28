import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';

class GameCard extends StatefulWidget {
  final String gameTitle;
  final String instructionText;
  final String gamePho;
  final double width;
  final double height;

  GameCard({
    Key? key,
    required this.gameTitle,
    this.instructionText = " ",
    required this.gamePho, 
    required this.width, 
    required this.height,
  }) : super(key: key);

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      height: widget.height.h,
      width: widget.width.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
           color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 3 , // Blur radius
            offset: Offset(0, 4), // Offset in x and y
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(widget.gamePho),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.transparent,
                  borderRadius:const BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          Center(
            child:Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.Primary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25)
                ),
                width: MediaQuery.of(context).size.width,
                child: Text(
                    widget.gameTitle,
                  textAlign: TextAlign.center,
                  style: Styles.homeStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
