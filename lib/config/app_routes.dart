import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/features/Games/erza3s7_screen/presentation/pages/erza3_screen.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/pages/labs_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/pages/meenana_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view/screens/meenxelsora_screen.dart';
import 'package:spa7o_ta7adii/features/Games/passwordchallenge_screen/presentation/pages/passwordchallenge_screen.dart';
import 'package:spa7o_ta7adii/features/Games/tamsel_screen/presentation/pages/tamseel_screen.dart';
import 'package:spa7o_ta7adii/features/home_screen/presentaion/home_screen.dart';
import 'package:spa7o_ta7adii/features/splash_screen/presentaion/splash_screen.dart';

import '../core/utils/styles.dart';
import '../features/Games/arosty_screen/presentation/pages/arosty_screen.dart';
import '../features/Games/bank_screen/presentation/pages/bank_screen.dart';
import '../features/instructions_screen/presentaion/instructions_screen.dart';

class AppRouting {

  static const String splashScreen = "/splashScreen";
  static const String homeScreen = "/homeScreen";
  static const String instructionScreen = "/InstructionsScreen";
  static const String tamseelScreen = "/TamseelScreen";
  static const String arostiScreen = "/ArostyScreen";
  static const String bankScreen = "/BankScreen";
  static const String erza3Screen = "/Erza3Screen";
  static const String labsSa7bkScreen = "/LabsSa7bkScreen";
  static const String meenAnaScreen = "/MeenAnaScreen";
  static const String passwordScreen = "/PasswordScreen";
  static const String riskScreen = "/RiskScreen";
  static const String seba2Screen = "/Seba2Screen";
  static const String meenXelsoraScreen = "/MeenXelsoraScreen";
  static const String gamesMainScreen = "/gamesMainScreen";
}


class AppRouter {
  static Route<dynamic> animateRouteBuilder(
      Widget widget, {
        PageRouteAnimation? pageRouteAnimation,
        Duration? duration,
      }) {
    return buildPageRoute(
        widget,
        pageRouteAnimation ?? PageRouteAnimation.SlideBottomTop,
        duration ?? Duration(milliseconds: 300));
  }

  static Route? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
    switch (routeSettings.name){
      case AppRouting.splashScreen:
        return animateRouteBuilder(SplashScreen());
      case AppRouting.arostiScreen:
        return animateRouteBuilder(ArostyScreen());
      case AppRouting.homeScreen:
        return animateRouteBuilder(HomeScreen());
      case AppRouting.instructionScreen:
        return animateRouteBuilder(InstructionsScreen(
          index: args as int,
        ));
      case AppRouting.bankScreen:
        return animateRouteBuilder(BankScreen());
      case AppRouting.erza3Screen:
        return animateRouteBuilder(Erza3Screen());
      case AppRouting.meenAnaScreen:
        return animateRouteBuilder(MeenAnaScreen());
      case AppRouting.labsSa7bkScreen:
        return animateRouteBuilder(LabsSa7bkScreen());
      case AppRouting.meenXelsoraScreen:
        return animateRouteBuilder(MeenXelsoraScreen());
      case AppRouting.passwordScreen:
        return animateRouteBuilder(PasswordScreen());
      case AppRouting.tamseelScreen:
        return animateRouteBuilder(TamseelScreen());
    }
    return null;
  }

  // static Route<dynamic> buildPageRoute(
  //     Widget widget,
  //     PageRouteAnimation pageRouteAnimation,
  //     Duration duration,
  //     ) {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => widget,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       Widget transition = child;
  //       switch (pageRouteAnimation) {
  //         case PageRouteAnimation.Fade:
  //           transition = FadeTransition(opacity: animation, child: child);
  //           break;
  //         case PageRouteAnimation.SlideBottomTop:
  //           transition = SlideTransition(
  //             position: Tween<Offset>(
  //               begin: const Offset(0, 1),
  //               end: Offset.zero,
  //             ).animate(animation),
  //             child: child,
  //           );
  //           break;
  //         case PageRouteAnimation.Fade:
  //           transition = SlideTransition(
  //             position: Tween<Offset>(
  //               begin: const Offset(1, 0),
  //               end: Offset.zero,
  //             ).animate(animation),
  //             child: child,
  //           );
  //           break;
  //         case PageRouteAnimation.Rotate:
  //           transition = SlideTransition(
  //             position: Tween<Offset>(
  //               begin: const Offset(-1, 0),
  //               end: Offset.zero,
  //             ).animate(animation),
  //             child: child,
  //           );
  //           break;
  //         case PageRouteAnimation.Scale:
  //           transition = SlideTransition(
  //             position: Tween<Offset>(
  //               begin: const Offset(0, -1),
  //               end: Offset.zero,
  //             ).animate(animation),
  //             child: child,
  //           );
  //           break;
  //         default:
  //           break;
  //       }
  //       return transition;
  //     },
  //     transitionDuration: duration,
  //   );
  // }
}

