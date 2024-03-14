import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spa7o_ta7adii/core/service/cubit/validation_bloc_cubit.dart';
import 'package:spa7o_ta7adii/core/service/firebase_manager.dart';
import 'package:spa7o_ta7adii/core/service/models/actingDm.dart';
import 'package:spa7o_ta7adii/core/service/models/bankDm.dart';
import 'package:spa7o_ta7adii/core/service/models/labsDm.dart';
import 'package:spa7o_ta7adii/core/service/models/meenAnaDm.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/core/service/models/riskDm.dart';
import 'package:spa7o_ta7adii/core/service/models/seba2Dm.dart';
import 'package:spa7o_ta7adii/core/widgets/send_qeutions_widgets/custom_toast.dart';

import '../../theming/styles.dart';

class CustomButton extends StatefulWidget {
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
    required this.index,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBlocCubit, ValidationBlocState>(
      listener: (context, state) {
        if (state is ValidationBlocSucess) {
        showToast(context,Icon(Icons.done),'تم يا حبيب اخوك',Colors.greenAccent);
          print(state);
        }
        else if (state is ValidationBlocError) {
         showToast(context,Icon(Icons.error),'املا كل الخانات',Colors.redAccent);
          print(state);

        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (widget.index == 0) {
              if(widget.firstController!.text.isEmpty){
            context.read<ValidationBlocCubit>().validationState(false); 
            print('faill');
              }
              else{
              ActingDm actingDm = ActingDm(name: widget.firstController!.text);
              FirebaseManager.addActingQuest(actingDm);
           context.read<ValidationBlocCubit>().validationState(true); 
                print('suxxxxxxxxxxxx');
            } 
            }
            
            else if (widget.index == 1) {
              if (widget.firstController!.text.isEmpty ||
                  widget.secondController!.text.isEmpty ||
                  widget.fourthController!.text.isEmpty ||
                  widget.fifthController!.text.isEmpty ||
                  widget.sixthController!.text.isEmpty) {
                context.read<ValidationBlocCubit>().validationState(false);
                print('fail');
              } 
              else {
               print('winnner winner checken dinnner=========');
                  MeenAnaDm meenAnaDm = MeenAnaDm(
                  first: widget.firstController!.text,
                  second: widget.secondController!.text,
                  third: widget.thirdController!.text,
                  fourth: widget.fourthController!.text,
                  fifth: widget.fifthController!.text,
                  name: widget.sixthController!.text,
                );

                FirebaseManager.addMeenAnaQuest(meenAnaDm);
                context.read<ValidationBlocCubit>().validationState(true);
              }
            } else if (widget.index == 2) {
              if(widget.firstController!.text.isEmpty || widget.secondController!.text.isEmpty){
              context.read<ValidationBlocCubit>().validationState(false); 
              }
              else{
              LabsDm labsDm = LabsDm(
                question: widget.firstController!.text,
                answers: widget.secondController!.text,
              );
              FirebaseManager.addLabsQuest(labsDm);
            context.read<ValidationBlocCubit>().validationState(true); 
              }
            } else if (widget.index == 3) {
              if(
                widget.firstController!.text.isEmpty||
                widget.secondController!.text.isEmpty||
                widget.thirdController!.text.isEmpty||
                 widget.fourthController!.text.isEmpty||
                 widget.fifthController!.text.isEmpty||
                  widget.sixthController!.text.isEmpty||
                   widget.seventhController!.text.isEmpty||
                   widget.eighthController!.text.isEmpty||
                   widget.ninthController!.text.isEmpty
              )
              {
                context.read<ValidationBlocCubit>().validationState(false); 
              }
              else{
  
              RiskDm riskDm = RiskDm(
                category: widget.firstController!.text,
                fiveQuest: widget.secondController!.text,
                fiveAns: widget.thirdController!.text,
                tenQuest: widget.fourthController!.text,
                tenAns: widget.fifthController!.text,
                twentQuest: widget.sixthController!.text,
                twentAns: widget.seventhController!.text,
                fourtQuest: widget.eighthController!.text,
                fourtAns: widget.ninthController!.text,
              );
              FirebaseManager.addRiskQuest(riskDm);
           context.read<ValidationBlocCubit>().validationState(true); 
              }
            } else if (widget.index == 4) {
              if(widget.firstController!.text.isEmpty||widget.secondController!.text.isEmpty){
              context.read<ValidationBlocCubit>().validationState(false); 
              }
              else{
              BankDm bankDm = BankDm(
                question: widget.firstController!.text,
                answer: widget.secondController!.text,
              );
              FirebaseManager.addBankQuest(bankDm);
              context.read<ValidationBlocCubit>().validationState(true); 
              }
            } else if (widget.index == 5) {
              if(widget.firstController!.text.isEmpty||widget.secondController!.text.isEmpty){
              context.read<ValidationBlocCubit>().validationState(false); 
              }
              else{
              Seba2Dm seba2Dm = Seba2Dm(
                question: widget.firstController!.text,
                answer: widget.secondController!.text,
              );
              FirebaseManager.addSeba2Quest(seba2Dm);
             context.read<ValidationBlocCubit>().validationState(true); 
              }
            } else if (widget.index == 6) {
              if(widget.downloadUrl==null||widget.firstController!.text.isEmpty||widget.secondController!.text.isEmpty){
                    context.read<ValidationBlocCubit>().validationState(false); 
              }
              else{
              MeenSoraDm meenSoraDm = MeenSoraDm(
                imageurl: widget.downloadUrl ?? 'null',
                teamsheet: widget.firstController!.text,
                players: widget.secondController!.text,
              );
              FirebaseManager.addMeenSoraQuest(meenSoraDm);
              context.read<ValidationBlocCubit>().validationState(true);
              widget.downloadUrl??''; 
              }
            }
            
            widget.firstController?.clear();
            widget.secondController?.clear();
            widget.thirdController?.clear();
            widget.fourthController?.clear();
            widget.fifthController?.clear();
            widget.sixthController?.clear();
            widget.seventhController?.clear();
            widget.eighthController?.clear();
            widget.ninthController?.clear();
          },
          child: Container(
            width: 80.w,
            height: 40.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10),
                right: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 45, 62, 92),
            ),
            alignment: Alignment.center,
            child: Text(
              'Submit',
              style: Styles.instructionStyle,
            ),
          ),
        );
      },
    );
  }



}

