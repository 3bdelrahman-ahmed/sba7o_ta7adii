import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/config/app_routes.dart';
import 'package:spa7o_ta7adii/core/service/cubit/password_and_tamseel_cubit.dart';
import 'package:spa7o_ta7adii/core/service/cubit/validation_cubit.dart';
import 'package:spa7o_ta7adii/core/service_locator/di.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/manager/cubit/meenxelsora_cubit.dart';
import 'package:spa7o_ta7adii/features/Games/risk_screen/domain/cubit/risk_cubit.dart';

import 'features/Games/meenana_screen/presentation/manager/cubit/meenana_cubit.dart';

class Spa7oApp extends StatelessWidget {
  const Spa7oApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => locator<MeenAnaCubit>(),
            ),
            BlocProvider(
              create: (context) => locator<LabsCubit>(),
            ),
            BlocProvider(
              create: (context) => locator<MeenXelsoraCubit>(),
            ),
            BlocProvider(
              create: (context) => locator<ArostyCubit>(),
            ),
            BlocProvider(create: (context) => locator<ValidationCubit>()),
            BlocProvider(
                create: (context) => locator<PasswordAndTamseelCubit>()),
            BlocProvider(create: (context) => locator<RiskCubit>())
          ],
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: AppRouting.splashScreen,
            ),
          ),
        );
      },
    );
  }
}
