import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';
import 'package:spa7o_ta7adii/core/widgets/image_picker_widget.dart/image_picker_widget.dart';


class Acting extends StatefulWidget{
  @override
  State<Acting> createState() => _ActingState();
}

class _ActingState extends State<Acting> {
  final TextEditingController playerController = TextEditingController();

  final int index = 0;
  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    playerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InputField(hintText: 'اكتب اسم اللاعب',controller: playerController,),
        const Spacer(),
        CustomButton(firstController: playerController,index: index,),
      ],
    );
  }
}