import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class LapsSa7pak extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  InputField(hintText: 'اكتب السؤال'),
          const  InputField(hintText: 'كتب الاجابات المقترحة'),
          const Spacer(),
            CustomButton(),

          ]
      
      );
  }
}