import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/text_styles.dart';

class ChangeWidget extends StatelessWidget {
  final VoidCallback onChanged;
  const ChangeWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          onPressed: onChanged,
          icon: Icon(
            Icons.change_circle,
            color: Colors.red,
            size: 40.w,
          )),
    );  }
}
