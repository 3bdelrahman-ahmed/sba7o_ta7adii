
import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

class TextDialogWidget extends StatefulWidget {
  final String title;
  final void Function()? onConfirm;
  final void Function()? onCancel;
  final String? confirmText;
  final String? cancelText;
  final Color? confirmColor;
  final Color? cancelBorderColor;
  final TextStyle? cancelTextStyle;

  const TextDialogWidget({
    Key? key,
    required this.title,
    this.onConfirm,
    this.onCancel,
    this.confirmText ,
    this.cancelText ,
    this.confirmColor ,
    this.cancelBorderColor ,
    this.cancelTextStyle,
  }) : super(key: key);

  @override
  State<TextDialogWidget> createState() => _TextDialogWidgetState();
}

class _TextDialogWidgetState extends State<TextDialogWidget> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontFamily: "Cairo",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700
          ),
          textAlign: TextAlign.center,
        ).paddingSymmetric(vertical: 16.h),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: widget.onConfirm,
                child: Container(
                  height: 52.h,
                  decoration: BoxDecoration(
                    color: widget.confirmColor??Colors.green,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    widget.confirmText??"Yes",
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp
                    )
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: widget.onCancel,
                child: Container(
                  height: 52.h,
                  margin: EdgeInsetsDirectional.only(start: 8.w),
                  decoration: BoxDecoration(
                    border:
                    Border.all(color: widget.cancelBorderColor??Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    widget.cancelText??"No",
                    style:widget.cancelTextStyle??TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
