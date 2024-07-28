import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'risk_state.dart';

class RiskCubit extends Cubit<RiskState> {
  RiskCubit() : super(RiskInitial());
  List<int> selectedCells=[];


  void showDialogue(){
        emit(OpenQeustionDialogueOpenState());
  }
}
