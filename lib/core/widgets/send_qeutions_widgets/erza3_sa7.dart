import 'package:flutter/material.dart';


import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class Erza3Sa7 extends StatefulWidget{
  @override
  State<Erza3Sa7> createState() => _Erza3Sa7State();
}

class _Erza3Sa7State extends State<Erza3Sa7> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _answerController = TextEditingController();

  final int index = 4;
  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    _answerController.dispose();
    _questionController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InputField(hintText: 'اكتب السؤال' ,controller: _questionController,),
        InputField(hintText: 'اكتب الاجابة' ,controller: _answerController,),
        Spacer(),
        CustomButton(index: index,
          firstController: _questionController,
          secondController: _answerController,),
      ],
    );
  }
}