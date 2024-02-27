import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';
import 'package:spa7o_ta7adii/core/widgets/image_picker_widget.dart/image_picker_widget.dart';

class MeenXSora extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height : 5),
        ImagePickeR(),
       const InputField(hintText: 'اكتب اسامي ال 11 لاعيب',),
       const Spacer(),
        CustomButton(),
      ],
    );
  }
}