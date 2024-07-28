
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/firebase_manager.dart';
import 'package:spa7o_ta7adii/core/service/models/actingDm.dart';
import 'package:spa7o_ta7adii/core/service/cubit/pasword_and_tamseel_states.dart';

  class PasswordAndTamseelCubit extends Cubit<PasswordAndTamseelStates>
{
  PasswordAndTamseelCubit() : super(InitialState()){
    getPlayer();
  }
  int team1=0;
  int team2=0;
  ActingDm? actingDm;
  String? name;
  Future<void> getPlayer() async{
    emit(LoadingState());
    print(state);
    try {
      QuerySnapshot<ActingDm> querySnapshot = await FirebaseManager.getActing();
      if(querySnapshot.docs.isNotEmpty)
      {
        actingDm = querySnapshot.docs.first.data();
        name = actingDm!.name;
        print(name ??"");
        emit(SuccessGetPlayer());
      }
      print(state);
    } on Exception catch (e){
      emit(FailedGetPlayer());
    }
  }
  void teamsIncreament(String team){
    if(team == 'A'){
      team1++;
    }
    else {
      team2++;
    }
    if(second == 30) {
      stopTimer();
      emit(TimerCompletedState());
    }
    else {
      stopTimer(reset: false);
      emit(TimerPausedState());
    }
  }
  void teamsDecreament(String team){
    if(team == 'A'){
      if(team1 > 0)
      team1--;
    }
    else
      {if(team2 > 0)
      team2--;
  }
    if(second == 30) {
      stopTimer();
      emit(TimerCompletedState());
    }
    else {
      stopTimer(reset: false);
      emit(TimerPausedState());
    }
  }


 static const int maxSeconds = 30;
  int second = maxSeconds;
  Timer? timer;
  void resetTimer() {
    second = maxSeconds;
    print(state);
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
      emit(TimerCompletedState());
    } else {
      emit(TimerPausedState());
    }
    print(state);
    timer?.cancel();
  }

  void startTimer({bool reset = true}) {
    if (reset) resetTimer();
    timer?.cancel(); // Cancel any existing timer before starting a new one
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (second > 0) {
        emit(TimerRunningState());
        print(second);
        second--;
      } else {
        stopTimer();
      }
    });
  }

}