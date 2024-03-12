import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/custom_text_fields_widgets/custom_text_feild.dart';
import 'package:spa7o_ta7adii/core/widgets/cutom_button/custom_button.dart';
import 'package:spa7o_ta7adii/core/widgets/image_picker_widget.dart/image_picker_widget.dart';

class MeenXSora extends StatefulWidget{

  @override
  State<MeenXSora> createState() => _MeenXSoraState();
}

class _MeenXSoraState extends State<MeenXSora> {
  final TextEditingController answersController = TextEditingController();
  final TextEditingController sheetController = TextEditingController();
  String? downloadUrl;
  final int index = 6;
  @override
  void updateDownloadUrl(String? url) {
    setState(() {
      downloadUrl = url;
    });
  }
  void dispose() {
    // Dispose all controllers when the widget is disposed
    answersController.dispose();
    sheetController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(height : 5),
        ImagePickeR(onUpdateDownloadUrl: updateDownloadUrl,),
        InputField(hintText: 'اكتب في اي مباراه لعبت هذه التشكيلة',controller: sheetController,),
        InputField(hintText: 'اكتب اسامي ال 11 لاعيب',controller: answersController,),
       const Spacer(),
        CustomButton(
          index: index,
          firstController: sheetController,
          secondController: answersController,
          downloadUrl: downloadUrl,
        ),
      ],
    );
  }
}