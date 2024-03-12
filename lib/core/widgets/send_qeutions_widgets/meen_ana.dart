import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class MeenAna extends StatefulWidget{

  @override
  State<MeenAna> createState() => _MeenAnaState();
}

class _MeenAnaState extends State<MeenAna> {
  final TextEditingController _clue1Controller = TextEditingController();
  final TextEditingController _clue2controller = TextEditingController();
  final TextEditingController _clue3Controller = TextEditingController();
  final TextEditingController _clue4Controller = TextEditingController();
  final TextEditingController _clue5Controller = TextEditingController();
  final TextEditingController _answerController = TextEditingController();
  final int index = 1;
  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    _clue1Controller.dispose();
    _clue2controller.dispose();
    _clue3Controller.dispose();
    _clue4Controller.dispose();
    _clue5Controller.dispose();
    _answerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
                children: [
                 InputField(hintText: "اكتب اول كلو",controller: _clue1Controller,),
                  InputField(hintText: "اكتب تاني كلو",controller: _clue2controller,),
                  InputField(hintText: "اكتب تالت كلو", controller: _clue3Controller,),
                  InputField(hintText: "اكتب رابع كلو",controller: _clue4Controller,),
                  InputField(hintText: "اكتب خامس كلو",controller: _clue5Controller,),
                  InputField(hintText: "اكتب الاجابة  ",controller: _answerController,),
                  SizedBox(height: 10,),
                     CustomButton(
                       index: index,
                       firstController: _clue1Controller,
                       secondController: _clue2controller,
                       thirdController: _clue3Controller,
                       fourthController: _clue4Controller,
                       fifthController: _clue5Controller,
                       sixthController: _answerController,
                     ),
                ],
              ),
    );
  }
}