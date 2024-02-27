
import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class Risk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
        InputField(hintText: 'اكتب الفئة (زي مثلا اسئلة عن الاهلي)'),
        InputField(hintText: 'اكتب سؤال 5 نقاط'),
        InputField(hintText: 'اكتب سؤال 10 نقاط'),
        InputField(hintText: 'اكتب سؤال 20 نقطة'),
        InputField(hintText: 'اكتب سؤال 40 نقطة'),
        const SizedBox(height: 5,),
        CustomButton(),
        ],
      ),
    );
  }
}