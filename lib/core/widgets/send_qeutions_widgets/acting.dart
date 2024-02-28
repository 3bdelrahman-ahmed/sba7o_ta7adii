import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';
import 'package:spa7o_ta7adii/core/widgets/image_picker_widget.dart/image_picker_widget.dart';


class Acting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
             ImagePickeR(),
            //const SizedBox(height: 3,),
            const InputField(hintText: 'اكتب اسم اللعيب',),
            const Spacer(),
            CustomButton(),
        ],

    );
  }
}