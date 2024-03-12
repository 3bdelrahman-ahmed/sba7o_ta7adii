import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class LapsSa7pak extends StatefulWidget{
  @override
  State<LapsSa7pak> createState() => _LapsSa7pakState();
}

class _LapsSa7pakState extends State<LapsSa7pak> {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController answersController = TextEditingController();

  final int index = 2;
  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    questionController.dispose();
    answersController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InputField(hintText: 'اكتب السؤال',controller:questionController,),
            InputField(hintText: 'كتب الاجابات المقترحة',controller: answersController,),
          const Spacer(),
            CustomButton(firstController: questionController,
            secondController: answersController,
            index: index,),
          ]

      );
  }
}