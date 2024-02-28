import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';

class ImagePickeR extends StatefulWidget{
  @override
  State<ImagePickeR> createState() => _ImagePickeRState();
}

class _ImagePickeRState extends State<ImagePickeR> {
   XFile? imageFile;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(3),
      width: ScreenUtilInit().designSize.width,
      height: 67.h,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5)),
        border: Border.all(
          color: ColorsManager.Primary,
          width: 2.4
        )
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              _imagePick();
            },
            child: Container(
              width: 60.w,
              height: 35.h,
              decoration:  BoxDecoration(
                color: ColorsManager.Primary,
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))
              ),
              alignment: Alignment.center,
              child: Text('اختيار',
              style: Styles.textInButtonsStyle,
              )
            ),
          ),
        const  SizedBox(width: 10,),

          imageFile==null?const Text('null'):Text(truncateText(imageFile!.name, 15),
          style: Styles.instructionStyle,
          ),
    
          Icon(Icons.image,size: 35,)
        ],
      ),
    );
  }


String truncateText(String text, int maxLength) {
  if (text.length > maxLength) {
    return '${text.substring(0, maxLength)}...';
  } else {
    return text;
  }
}

Future _imagePick() async {
  XFile? img = await ImagePicker().pickImage(source: ImageSource.gallery);
  setState(() {
    imageFile=img;
  });
}
}
