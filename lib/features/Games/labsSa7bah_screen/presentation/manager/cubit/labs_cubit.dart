import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/firebase_manager.dart';
import 'package:spa7o_ta7adii/core/service/models/labsDm.dart';

import 'labs_states.dart';

class LabsCubit extends Cubit<LabsStates> {
  LabsCubit() : super(InitialState()){
    getQuest();
  }
   LabsDm? labsDm ;
   String? question;
   String? answers;
  Future<void> getQuest()async{
    emit(LoadingState());
    QuerySnapshot<LabsDm> querySnapshot = await FirebaseManager.getLabs();
    if(querySnapshot.docs.isNotEmpty)
      {
        try{
          labsDm = querySnapshot.docs.first.data();
          question = labsDm!.question;
          answers = labsDm!.answers;
          print(labsDm?.id);
          isVisible = false;
          emit(SuccessGetQuest());
        }
        on Exception catch(e)
        {
          emit(FailedGetQuest());
        }
      }
  }

  int team1=0;
  int team2=0;
  void teamsIncreament(String team){
    if(team == 'A'){
      team1++;
    }
    else {
      team2++;
    }
    emit(CounterIncreamentState());
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
    emit(CounterDecreamentState());
  }
  int team1Mazad = 0;
  int team2Mazad = 0;

  void mazadIncreament(String team){
    if(team == 'A'){
      team1Mazad++;
    }
    else {
      team2Mazad++;
    }
    emit(MazadChangeState());
  }
  void mazadDecreament(String team){
    if(team == 'A'){
      if(team1Mazad > 0)
        team1Mazad--;
    }
    else
    {if(team2Mazad > 0)
      team2Mazad--;
    }
    emit(MazadChangeState());
  }
  bool isVisible = false ;
  void changeVisibility(){
    isVisible = !isVisible;
    print("changevisibility");
    emit(changeVisibiltyState());
  }
  static const int maxSeconds = 30;
  int second = maxSeconds;
  Timer? timer;
  void resetTimer() {
    second = maxSeconds;
    timer?.cancel();
    emit(TimerCompletedState());
    print(state);
  }

  void startTimer({required int teamNum}){
    timer?.cancel(); // Cancel any existing timer before starting a new one
    timer = Timer.periodic(Duration(seconds: 1), (_){
        emit(TimerRunningState());
        second--;
       if(teamNum == 1)
         {
           if(team1Mazad == 0)
           {
             resetTimer();
             timer?.cancel();
             team1++;
             team2Mazad = 0;
             emit(TimerCompletedState());
           }
           else if(second == 0 && team1Mazad > 0)
             {
               resetTimer();
               timer?.cancel();
               team2++;
               team2Mazad = 0;
               team1Mazad = 0;
               emit(TimerCompletedState());
             }
         }
       else
         {
           if(team2Mazad == 0)
           {
             resetTimer();
             timer?.cancel();
             team2++;
             team1Mazad = 0;
             emit(TimerCompletedState());
           }
           else if (second == 0 && team2Mazad > 0)
           {
             resetTimer();
             timer?.cancel();
             team1++;
             team1Mazad = 0;
             team2Mazad = 0;
             emit(TimerCompletedState());
           }
         }
    });
  }
}