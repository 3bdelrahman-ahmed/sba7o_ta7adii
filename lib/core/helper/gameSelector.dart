

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/config/app_routes.dart';
import 'package:spa7o_ta7adii/core/widgets/static/screens_list.dart';

void gameSelector({required int index, required BuildContext context}) {
  Navigator.push(
    context,
    AppRouter.animateRouteBuilder(GamesList.screens[index]),
  );
}