import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class SpaqSor3a extends StatefulWidget{
  @override
  State<SpaqSor3a> createState() => _SpaqSor3aState();
}

class _SpaqSor3aState extends State<SpaqSor3a> {
  final TextEditingController _questionController = TextEditingController();

  final TextEditingController _answersController = TextEditingController();

  final int index = 5;

  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    _questionController.dispose();
    _answersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
       InputField(hintText: 'اكتب السؤال',controller: _questionController,),
        InputField(hintText: 'اكتب خمس اجابات مقترحة' ,controller: _answersController,),
        const Spacer(),
        CustomButton(index: index,firstController: _questionController,
        secondController: _answersController,),

      ],
    );
  }
}