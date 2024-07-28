import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:spa7o_ta7adii/core/widgets/dialogs/app_dialog.dart';
import 'package:spa7o_ta7adii/features/Games/risk_screen/domain/cubit/risk_cubit.dart';

class CustomTableWidget extends StatefulWidget{
   const CustomTableWidget({super.key});

  @override
  State<CustomTableWidget> createState() => _CustomTableWidgetState();
}

class _CustomTableWidgetState extends State<CustomTableWidget> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    var cubit = context.read<RiskCubit>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250.h,
      //  color: Colors.amber,
      alignment: Alignment.center,

      child: DataTable(

          dataTextStyle: TextStyle(
              fontFamily: "Cairo",
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
          headingRowHeight: 70.w,
          headingTextStyle: TextStyle(
              fontFamily: "Cairo",
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
          horizontalMargin: 10.w,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
          border: TableBorder.all(style: BorderStyle.none),
          dataRowMaxHeight: 80.h,
          columnSpacing: 0.w,
          dividerThickness: 0.0,
          columns: List.generate(3, (index) {
            return DataColumn(
                label: Container(
              width: 100.w,
              height: 50.h,
              decoration: const BoxDecoration(color: Colors.white),
              alignment: Alignment.center,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                // Scale down the text to fit within the container
                child: Text(
                  "كريستايو رونالدو",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ));
          }),
          rows: List.generate(4, (ind1) {
            return DataRow(
                cells: List.generate(3, (ind2) {
              return DataCell(Padding(
                padding: EdgeInsets.all(2.w),
                child: BlocBuilder<RiskCubit, RiskState>(
                  builder: (context, state) {
                    print(state);
                    return Container(
                      width: 100.w,
                      height: 200.h,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(ind1 == 0
                          ? "${(ind1 + 1) * 10}"
                          : ind1 == 1
                              ? "${(ind1 + 1) * 10}"
                              : ind1 == 2
                                  ? "${(ind1 + 1) * 10}"
                                  : "${(ind1 + 1) * 10}"),
                    );
                  },
                ),
              ).onTap((){
                AppDialog.textDialog(

                    context: context, onConfirm: (){

                }, onCancel: (){
                  finish(context);
                }, title: "Question");
              }));
            }));
          })),
    );
  }
}
