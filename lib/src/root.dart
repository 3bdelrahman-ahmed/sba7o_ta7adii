import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/router/routes.dart';
import 'package:spa7o_ta7adii/features/on_boarding_screen/onboarding_screen.dart';
import 'package:spa7o_ta7adii/features/home_screen/presentaion/home_screen.dart';


class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          initialRoute: Routes.onBoarding,
          routes: {
            Routes.onBoarding: (context) => OnBoardingScreen(),
            Routes.homeScreen: (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
