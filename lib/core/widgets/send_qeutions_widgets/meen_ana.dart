import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';


class MeenAna extends StatelessWidget{

  List <String> titles=[
    "اكتب اول كلو",
    "اكتب تاني كلو",
    "اكتب تالت كلو",
    "اكتب رابع كلو",
     "اكتب خامس كلو",
     "اكتب الاجابة  ",
  ];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(titles.length, (index) =>
              Column(
                children: [
                 InputField(
                  hintText: titles[index],
                  ),
                 index==titles.length-1?Column(
                   children: [
                    SizedBox(height: 10,),
                     CustomButton(),
                   ],
                 ):const SizedBox(height: 5,),

                ],
              ),
              
         ),
        

      ),
    );
  }
}