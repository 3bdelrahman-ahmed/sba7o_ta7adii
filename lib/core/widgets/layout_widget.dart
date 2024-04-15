import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui' as ui;

import 'basic_widget/arrows_widgets.dart';
import 'basic_widget/playername_widget.dart';

class LayoutWidget extends StatelessWidget {
  final Widget widget;
  const LayoutWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
          top: 20.h,
          right: 0,
          child: const ArrowsWidget(),
        ),
        SizedBox(
          height: 35.h,
        ),
        // Positioned(
        //   top: 150.h,
        //   left: 30.h,
        //   right: 30.h,
        //   child: 
        //       PlayersWidget(),
          
        // ),
        
         Positioned(
          top: 150.h,
          left: 30.h,
          right: 30.h,
          child: 
             widget
          
        )
      ],
    );
  }
}
