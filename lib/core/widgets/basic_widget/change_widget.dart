import 'package:flutter/material.dart';

import '../../theming/styles.dart';

class ChangeWidget extends StatelessWidget {
  final VoidCallback onChanged;
  const ChangeWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: onChanged,
                  icon:const Icon(
                    Icons.change_circle,
                    color: Colors.red,
                    size: 40,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "تغيير",
                  style: Styles.instructionStyle
                      .copyWith(fontSize: 20),
                ),
              )
            ],
          )
        ]);  }
}
