// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/theming/colors.dart';
import 'package:spa7o_ta7adii/core/theming/styles.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final bool maxLines;
  final TextInputType? textInputType;
  final Widget ? prefixIcon;
  final Widget ? suffixIcon;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Color? backgroundColor;

  const InputField({
    Key? key,
    this.controller,
    this.maxLines=false,
    this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3,),
        TextFormField(

          decoration: InputDecoration(
                        isDense: true,
                        contentPadding: contentPadding?? const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        hintText: hintText,
                        hintStyle:hintStyle?? Styles.instructionStyle,hintTextDirection: TextDirection.rtl,
                        enabledBorder:enabledBorder??  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.Primary,
                            width: 2,
                          ),
                        ),
                        focusedBorder:focusedBorder?? const OutlineInputBorder(
                          borderSide: BorderSide(
                            //color: secondaryColor,
                            width: 1.3,
                          ),
                        ),
                         errorBorder: const OutlineInputBorder(
          borderSide:BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
                      ),
                      obscureText:isObscureText??false ,
                      controller: controller,
                      textDirection: TextDirection.rtl,
                      autofocus: false,
                      keyboardType:textInputType,
                      style: Styles.instructionStyle,
                      validator: (value) {
                        if(value==null||value.isEmpty)
                        {
                          return 'من فضلك ضيف الخانات كلها';
                        }
                        return '';
                      },

                    ),
      ],
    );
  }
}