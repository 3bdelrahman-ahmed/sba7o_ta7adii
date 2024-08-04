import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/utils/app_assets.dart';
import 'package:spa7o_ta7adii/core/utils/styles.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/manager/cubit/meenana_cubit.dart';

class TableOfClues extends StatelessWidget {
  const TableOfClues({super.key});
  @override
  Widget build(BuildContext context) {
    final tableOfClues = context.watch<MeenAnaCubit>().TableofClues;
    return  Stack(
      textDirection: TextDirection.rtl,
      children: [
        Image.asset(AppAssets.card,fit: BoxFit.fill,),
        Positioned(
            right: 60.w,
            left: 60.h,
            top: 10.h,
            bottom: 10.h,
            child: Container(
              height: 350.h,
              child: ListView.builder(
                itemCount: tableOfClues.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(tableOfClues[index]??"",
                        textDirection: TextDirection.rtl,
                      style: TextStyles.GamesListStyle.copyWith(
                        color: Colors.black,
                        fontSize: 18
                      ),),
                      Divider(
                        color: Colors.black, // Set the color of the divider
                        thickness: 1, // Set the thickness of the divider
                        height: 20, // Set the height of the divider
                        indent: 20, // Set the left padding of the divider
                        endIndent: 20, // Set the right padding of the divider
                      ),
                    ],
                  );
                },
              ),
            )
        ),
      ],
    );
  }
}
