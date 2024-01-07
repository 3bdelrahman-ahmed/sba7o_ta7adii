import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import '../../core/router/routes.dart';
import '../../core/theming/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  static String route = "Splash";

  @override
  State<OnBoardingScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<OnBoardingScreen> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    Future.delayed(Duration(seconds: 1)
      ,() {
        Navigator.pushReplacementNamed(context, Routes.homeScreen);
      },);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorsManager.Primary,
            ColorsManager.Primary,
            Colors.black
          ],
              begin: Alignment.topCenter,
              end: AlignmentDirectional.bottomEnd)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
                "assets/saba7o.png",
                width: 300,
                height: 300,
              )),

              Lottie.asset('assets/football.json',
              width: 200,
              height: 150,
              )
        ],
      ),
    );
  }
}
