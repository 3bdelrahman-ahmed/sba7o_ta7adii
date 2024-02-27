import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';


class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () => null,
      child: Container(
        width: 80.w,
        height: 40.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10)),
          color: Color.fromARGB(255, 45, 62, 92)
        ),
        alignment: Alignment.center,
        child: Text('Submit',
        style: Styles.instructionStyle,
        ),
      ),
    );
  }
}