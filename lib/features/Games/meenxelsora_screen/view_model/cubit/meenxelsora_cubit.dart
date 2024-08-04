import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/firebase_manager.dart';
import 'package:spa7o_ta7adii/core/service/models/meenSoraDm.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/view_model/cubit/meenxelsora_states.dart';

class MeenXelsoraCubit extends Cubit<MeenXelsoraBlocStates>{

  MeenXelsoraCubit() : super(InitialState()){
    getSquad();
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

  bool isVisible = false ;
  void changeVisibility(){
      isVisible = !isVisible;
      print("changevisibility");
      emit(changeVisibiltyState());
  }

  MeenSoraDm? meenSoraDm;
  String? team;
  String? players;
  String? ImageUrl;
  Future<void> getSquad() async{
    emit(LoadingState());
    print(state);
    try{
     QuerySnapshot<MeenSoraDm> querySnapshot = await FirebaseManager.getSora();
     if(querySnapshot.docs.isNotEmpty)
       {
        meenSoraDm = querySnapshot.docs.first.data();
        players = meenSoraDm!.players;
        team = meenSoraDm!.teamsheet;
        ImageUrl = meenSoraDm!.imageurl;
        isVisible = false;
        emit(SuccessGetSquad());
       }
    }on Exception
    {
      emit(FailedGetSquad());
    }
  }
}