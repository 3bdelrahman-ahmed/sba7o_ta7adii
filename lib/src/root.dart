import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/router/routes.dart';
import 'package:spa7o_ta7adii/features/on_boarding_screen/onboarding_screen.dart';
import 'package:spa7o_ta7adii/features/on_boarding_screen/presentaion/home_screen.dart';


class RootApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoarding,
      routes: {
        Routes.onBoarding : (context) => OnBoardingScreen(),
        Routes.homeScreen : (context) => HomeScreen()
      },
    );
  }
}