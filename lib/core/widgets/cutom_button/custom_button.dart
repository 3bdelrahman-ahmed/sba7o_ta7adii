import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/service/firebase_manager.dart';
import 'package:spa7o_ta7adii/core/service/models/actingDm.dart';
import 'package:spa7o_ta7adii/core/service/models/bankDm.dart';
import 'package:spa7o_ta7adii/core/service/models/labsDm.dart';
import 'package:spa7o_ta7adii/core/service/models/meenAnaDm.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/core/service/models/riskDm.dart';
import 'package:spa7o_ta7adii/core/service/models/seba2Dm.dart';
import 'package:spa7o_ta7adii/core/widgets/send_qeutions_widgets/meen_x_sora.dart';

import '../../theming/styles.dart';

class CustomButton extends StatelessWidget {
  final String? downloadUrl;
  final TextEditingController? firstController;
  final TextEditingController? secondController;
  final TextEditingController? thirdController;
  final TextEditingController? fourthController;
  final TextEditingController? fifthController;
  final TextEditingController? sixthController;
  final TextEditingController? seventhController;
  final TextEditingController? eighthController;
  final TextEditingController? ninthController;
  final int index;
  CustomButton({
    this.downloadUrl,
    this.firstController,
    this.secondController,
    this.thirdController,
    this.fourthController,
    this.fifthController,
    this.sixthController,
    this.seventhController,
    this.eighthController,
    this.ninthController,
    required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            if (index == 0)
          {
            ActingDm actingDm = ActingDm(name: firstController!.text);
          FirebaseManager.addActingQuest(actingDm);
          }
        else if (index == 1)
          {
           MeenAnaDm meenAnaDm = MeenAnaDm(first: firstController!.text,
               second: secondController!.text,
               third: thirdController!.text,
               fourth: fourthController!.text,
               fifth: fifthController!.text,
               name: sixthController!.text);
           FirebaseManager.addMeenAnaQuest(meenAnaDm);
          }
        else if(index == 2)
          {
           LabsDm labsDm = LabsDm(question: firstController!.text,
               answers: secondController!.text);
           FirebaseManager.addLabsQuest(labsDm);
          }
        else if (index == 3)
          {
            RiskDm riskDm = RiskDm(category: firstController!.text,
                fiveQuest: secondController!.text,
                fiveAns: thirdController!.text,
                tenQuest: fourthController!.text,
                tenAns: fifthController!.text,
                twentQuest: sixthController!.text,
                twentAns: seventhController!.text,
                fourtQuest: eighthController!.text,
                fourtAns: ninthController!.text);
            FirebaseManager.addRiskQuest(riskDm).then((value) =>
                firstController!.clear());
          }
        else if(index == 4) {
           BankDm bankDm = BankDm(question: firstController!.text,
               answer: secondController!.text);
           FirebaseManager.addBankQuest(bankDm);
        }
        else if(index == 5)
          {
         Seba2Dm seba2Dm = Seba2Dm(question: firstController!.text,
             answer: secondController!.text);
         FirebaseManager.addSeba2Quest(seba2Dm);
          }
        else if(index == 6){
        MeenSoraDm meenSoraDm = MeenSoraDm(imageurl:downloadUrl??"",
            teamsheet: firstController!.text
            ,players: secondController!.text);
        FirebaseManager.addMeenSoraQuest(meenSoraDm);
        }
            firstController?.clear();
            secondController?.clear();
            thirdController?.clear();
            fourthController?.clear();
            fifthController?.clear();
            sixthController?.clear();
            seventhController?.clear();
            eighthController?.clear();
            ninthController?.clear();
      },
      child: Container(
        width: 80.w,
        height: 40.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10),right: Radius.circular(10)),
          color: Color.fromARGB(255, 45, 62, 92),
        ),
        alignment: Alignment.center,
        child: Text(
          'Submit',
          style: Styles.instructionStyle,
        ),
      ),
    );
  }
}
