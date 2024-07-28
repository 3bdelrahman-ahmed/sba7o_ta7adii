import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/basic_widget/change_widget.dart';
import 'package:spa7o_ta7adii/features/Games/risk_screen/presentation/widgets/table_widget.dart';

import '../../../../../core/widgets/layout_widget.dart';

class RiskScreen extends StatelessWidget {
  const RiskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutWidget(
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CustomTableWidget(),

            ],
          ),
          buttonWidget: ChangeWidget(
            onChanged: () {},
          )),
      );
  }
}
