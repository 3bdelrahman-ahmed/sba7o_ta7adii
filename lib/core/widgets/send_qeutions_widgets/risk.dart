
import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class Risk extends StatefulWidget{
  @override
  State<Risk> createState() => _RiskState();
}

class _RiskState extends State<Risk> {
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _question5PointsController = TextEditingController();
  final TextEditingController _answer5PointsController = TextEditingController();
  final TextEditingController _question10PointsController = TextEditingController();
  final TextEditingController _answer10PointsController = TextEditingController();
  final TextEditingController _question20PointsController = TextEditingController();
  final TextEditingController _answer20PointsController = TextEditingController();
  final TextEditingController _question40PointsController = TextEditingController();
  final TextEditingController _answer40PointsController = TextEditingController();
  final int index = 3;
  @override
  void dispose() {
    // Dispose all controllers when the widget is disposed
    _categoryController.dispose();
    _question5PointsController.dispose();
    _answer5PointsController.dispose();
    _question10PointsController.dispose();
    _answer10PointsController.dispose();
    _question20PointsController.dispose();
    _answer20PointsController.dispose();
    _question40PointsController.dispose();
    _answer40PointsController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
        InputField(hintText: 'اكتب الفئة (مثال : اسئلة عن الاهلي)',controller:_categoryController ,),
        InputField(hintText: 'اكتب سؤال 5 نقاط',controller:_question5PointsController ,),
          InputField(hintText: 'اكتب اجابة السؤال',controller: _answer5PointsController,),
          InputField(hintText: 'اكتب سؤال 10 نقاط',controller: _question10PointsController,),
          InputField(hintText: 'اكتب اجابة السؤال',controller: _answer10PointsController,),
          InputField(hintText: 'اكتب سؤال 20 نقطة',controller: _question20PointsController,),
          InputField(hintText: 'اكتب اجابة السؤال',controller: _answer20PointsController,),
          InputField(hintText: 'اكتب سؤال 40 نقطة',controller: _question40PointsController,),
          InputField(hintText: 'اكتب اجابة السؤال',controller:_answer40PointsController ,),
          const SizedBox(height: 5,),
        CustomButton(firstController:_categoryController,
          secondController: _question5PointsController,
            thirdController: _answer5PointsController,
        fourthController: _question10PointsController,
        fifthController: _answer10PointsController,
        sixthController: _question20PointsController,
        seventhController: _answer20PointsController,
        eighthController: _question40PointsController,
        ninthController: _answer40PointsController,
        index: index,),
        ],
      ),
    );
  }
}