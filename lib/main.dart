import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa7o_ta7adii/core/service_locator/di.dart';
import 'package:spa7o_ta7adii/spa7o_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'bloc_observal.dart';
import 'firebase_options.dart';


void main()async{
  DependencyInjectionSetup();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Spa7oApp());
}