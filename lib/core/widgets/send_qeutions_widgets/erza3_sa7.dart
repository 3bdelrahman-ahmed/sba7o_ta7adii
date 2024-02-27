import 'package:flutter/material.dart';


import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class Erza3Sa7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
       const InputField(hintText: 'اكتب السؤال'),
       const  InputField(hintText: 'اكتب خمس اجابات مقترحة'),
        const Spacer(),
        CustomButton(),

      ],
    );
  }
}