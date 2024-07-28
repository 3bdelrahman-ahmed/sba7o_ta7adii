import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../utils/colors.dart';
import '../../utils/styles.dart';

class CounterTeamWidget extends StatelessWidget {
  int team1;
  int team2;
  VoidCallback? onIncteamA;
  VoidCallback? onIncteamB;
  VoidCallback? onDecteamA;
  VoidCallback? onDecteamB;

  CounterTeamWidget({
   required this.team1,
   required this.team2,
    required this.onIncteamA,
    required this.onIncteamB,
    required this.onDecteamA,
    required this.onDecteamB
});
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 180.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("الفريق التاني",style: TextStyles.instructionStyle,),
              SizedBox(height: 3.h,),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("$team2",style: TextStyles.counterNumberStyle)),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  GestureDetector(
                    onTap:onDecteamB,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.Primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 40.w,
                      height: 40.h,
                      child: Center(
                          child: Text("-",
                            style: TextStyles.homeStyle,)),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap:onIncteamB,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.Primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 40.w,
                      height: 40.h,
                      child: Center(
                          child: Text("+",
                            style: TextStyles.homeStyle,)),
                    ),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text("الفريق الأول",style: TextStyles.instructionStyle,),
              SizedBox(height: 3.h,),
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("$team1",style: TextStyles.counterNumberStyle)),
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  GestureDetector(
                    onTap:onDecteamA,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.Primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 40.w,
                      height: 40.h,
                      child: Center(
                          child: Text("-",
                            style: TextStyles.homeStyle,)),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap:onIncteamA,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorsManager.Primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 40.w,
                      height: 40.h,
                      child: Center(
                          child: Text("+",
                            style: TextStyles.homeStyle,)),
                    ),
                  )
      
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
