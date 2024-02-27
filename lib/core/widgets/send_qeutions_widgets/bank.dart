import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';

class BankSendQuetions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InputField(hintText: 'اكتب السؤال'),
        InputField(hintText: 'اكتب الاجابة'),
  Spacer(),
  CustomButton(),
      ],
    );
  }
}