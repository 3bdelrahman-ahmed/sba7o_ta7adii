import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lottie/lottie.dart';
import '../../../config/app_routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/colors.dart';
import '../../../core/widgets/app_default_image_view.dart';

class SplashScreen extends StatefulWidget {
  static String route = "Splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    Future.delayed(const Duration(seconds: 4)
      ,() {
        Navigator.pushReplacementNamed(context, AppRouting.homeScreen);
      },);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          ColorsManager.Primary,
          ColorsManager.Primary,
          Colors.black
        ], begin: Alignment.topCenter, end: AlignmentDirectional.bottomEnd)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: AppDefaultImageView(
              imagePath: AppAssets.spa7o,
            )),
            Lottie.asset(
              AppAssets.footballCharacter,
              width: 200.w,
              height: 150.h,
            )
          ],
        ),

      ),
    );
  }
}
