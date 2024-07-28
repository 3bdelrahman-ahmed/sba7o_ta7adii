// import 'package:buddy/core/helper/show_default_dialog.dart';
// import 'package:buddy/config/style/app_color.dart';
// import 'package:buddy/core/widgets/dialogs/image_dialog_single_button_widget.dart';
// import 'package:buddy/core/widgets/dialogs/image_dialog_widget.dart';
// import 'package:buddy/core/widgets/dialogs/text_dialog_single_button_widget.dart';
// import 'package:buddy/core/widgets/dialogs/text_dialog_widget.dart';
 import 'package:flutter/material.dart';
import 'package:spa7o_ta7adii/core/widgets/dialogs/text_dialog_widget.dart';

import '../../helper/show_dialogBox.dart';
//
// import 'app_string.dart';

abstract class AppDialog {
  static Future<Object?> textDialog({
    required context,
    required void Function()? onConfirm,
    required void Function()? onCancel,
    required String title,
    String? confirmText  ,
    String? cancelText ,
    Color? confirmColor ,

    Color? cancelBorderColor ,
    TextStyle? cancelTextStyle,
  }) =>
      showDefaultDialog(context,
          child: TextDialogWidget(
            title: title,
            onConfirm: onConfirm,
            onCancel: onCancel,
            confirmColor: confirmColor??Colors.green,
            confirmText: confirmText??"Yes",
            cancelText: cancelText??"No",
            cancelTextStyle:cancelTextStyle ,
            cancelBorderColor: cancelBorderColor??Colors.red,
          ));

  // static Future<Object?> textDialogSingleButton({
  //   required context,
  //   required void Function()? onConfirm,
  //   required String title,
  //   String? confirmText ,
  //   Color? confirmColor ,
  // }) =>
  //     showDefaultDialog(
  //       context,
  //       child: TextDialogSingleButtonWidget(
  //         title: title,
  //         confirmText: confirmText??"Yes",
  //         onConfirm: onConfirm??(){
  //           Navigator.pop(context);
  //         },
  //       ),
  //     );

  // static Future<Object?> imageDialog({
  //   required context,
  //   required void Function()? onConfirm,
  //   required void Function()? onCancel,
  //   required String title,
  //   required Widget image,
  //   String? confirmText ,
  //   String? cancelText ,
  //   Color? confirmColor ,
  //   Color? cancelBorderColor,
  // }) =>
  //     showDefaultDialog(
  //       context,
  //       child: ImageDialogWidget(
  //         title: title,
  //         image: image,
  //         onConfirm: onConfirm,
  //         onCancel: onCancel,
  //         confirmText: confirmText??"Yes",
  //         cancelText: cancelText??"No",
  //       ),
  //     );

  // static Future<Object?> imageDialogSingleButton({
  //   required context,
  //   required void Function()? onConfirm,
  //   required String title,
  //   required Widget image,
  //   String? confirmText ,
  //
  // }) =>
  //     showDefaultDialog(
  //       context,
  //       child: ImageDialogSingleButtonWidget(
  //         title: title,
  //         image: image,
  //         confirmText: confirmText??AppStrings.yes,
  //         onConfirm: onConfirm,
  //       ),
  //     );

  static Future<Object?> childDialog({
    required context,
    required Widget child,
  }) =>
      showDefaultDialog(
        context,
        child: child,
      );
}
