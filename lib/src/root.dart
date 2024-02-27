import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/router/routes.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/pages/arosty_screen.dart';
import 'package:spa7o_ta7adii/features/Games/bank_screen/presentation/pages/bank_screen.dart';
import 'package:spa7o_ta7adii/features/Games/erza3s7_screen/presentation/pages/erza3_screen.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/pages/labs_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/pages/meenana_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/pages/meenxelsora_screen.dart';
import 'package:spa7o_ta7adii/features/Games/passwordchallenge_screen/presentation/pages/passwordchallenge_screen.dart';
import 'package:spa7o_ta7adii/features/Games/risk_screen/presentation/pages/risk_screen.dart';
import 'package:spa7o_ta7adii/features/Games/seba2_screen/presentation/pages/seba2_screen.dart';
import 'package:spa7o_ta7adii/features/Games/tamsel_screen/presentation/pages/tamseel_screen.dart';
import 'package:spa7o_ta7adii/features/on_boarding_screen/presentaion/onboarding_screen.dart';
import 'package:spa7o_ta7adii/features/home_screen/presentaion/home_screen.dart';


class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          initialRoute: Routes.onBoarding,
          routes: {
            Routes.onBoarding: (context) => OnBoardingScreen(),
            Routes.homeScreen: (context) => HomeScreen(),
            Routes.TamseelScreen : (context) => TamseelScreen(),
            Routes.Erza3Screen : (context) => Erza3Screen(),
            Routes.MeenXelsoraScreen : (context) => MeenXelsoraScreen(),
            Routes.ArostyScreen : (context) => ArostyScreen(),
            Routes.Seba2Screen : (context) => Seba2Screen(),
            Routes.PasswordScreen : (context) => PasswordScreen(),
            Routes.BankScreen : (context) => BankScreen(),
            Routes.RiskScreen : (context) => RiskScreen(),
            Routes.LabsSa7bkScreen : (context) => LabsSa7bkScreen(),
            Routes.MeenAnaScreen : (context) => MeenAnaScreen()
          },
        );
      },
    );
  }
}
