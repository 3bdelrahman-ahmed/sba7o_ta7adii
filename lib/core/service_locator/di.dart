import 'package:get_it/get_it.dart';
import 'package:spa7o_ta7adii/core/service/cubit/validation_cubit.dart';
import '../../features/Games/arosty_screen/presentation/manager/cubit/bloc_cubit.dart';
import '../../features/Games/labsSa7bah_screen/presentation/manager/cubit/labs_cubit.dart';
import '../../features/Games/meenana_screen/presentation/manager/cubit/meenana_cubit.dart';
import '../../features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_cubit.dart';
import '../../features/Games/risk_screen/domain/cubit/risk_cubit.dart';
import '../service/cubit/password_and_tamseel_cubit.dart';

var locator = GetIt.instance;

void DependencyInjectionSetup(){
  locator.registerFactory(() => PasswordAndTamseelCubit());
  locator.registerFactory(() => ValidationCubit());
  locator.registerFactory(() => MeenXelsoraCubit());
  locator.registerFactory(() => ArostyCubit());
  locator.registerFactory(() => RiskCubit());
  locator.registerFactory(() => MeenAnaCubit());
  locator.registerFactory(() => LabsCubit());
}