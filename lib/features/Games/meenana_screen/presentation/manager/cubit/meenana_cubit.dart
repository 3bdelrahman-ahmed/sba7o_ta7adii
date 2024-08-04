import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/models/meenAnaDm.dart';
import 'package:spa7o_ta7adii/core/utils/app_strings.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/manager/cubit/meenana_states.dart';

import '../../../../../../core/service/firebase_manager.dart';

class MeenAnaCubit extends Cubit<MeenAnaBlocStates> {
  MeenAnaCubit() : super(InitialState()){
    getMeenAnaPlayer();
  }

  bool isVisible = false;
  int team1 = 0;
  int team2 = 0;
  int index = 0;
  MeenAnaDm? meenAnaDm;
  String? player;
  String? firstCl;
  String? secondCl;
  String? thirdCl;
  String? fourthCl;
  String? fifthCl;
  List<String?> Clues=[];
  List<String?> TableofClues=[];
  Future<void> getMeenAnaPlayer() async{
    emit(LoadingState());
    print(state);
    try{
      QuerySnapshot<MeenAnaDm> querySnapshot = await FirebaseManager.getMeenAna();
      if(querySnapshot.docs.isNotEmpty)
      {
        TableofClues.clear();
        Clues.clear();
        index = 0;
        meenAnaDm = querySnapshot.docs.first.data();
        player = meenAnaDm!.name;
        firstCl = meenAnaDm!.first;
        secondCl = meenAnaDm!.second;
        thirdCl = meenAnaDm!.third;
        fourthCl = meenAnaDm!.fourth;
        fifthCl = meenAnaDm!.fifth;
        List<String?> addingClues = [
          firstCl,
          secondCl,
          thirdCl,
          fourthCl,
          fifthCl
        ];
        Clues.addAll(addingClues);
        Clues.add(AppStrings.finishClues);
        isVisible = false;
        emit(SuccessGetMeenAnaPlayer());
      }
    }on Exception
    {
      emit(FailedGetMeenAnaPlayer());
    }
  }
   void addingClue(){
    if(index==4)
      {
        TableofClues.add(Clues[index]);
        index=5;
      }
    else if (index<5){
      TableofClues.add(Clues[index]);
      index++;
    }
    emit(AddClueState());
   }
  void changeVisibility(){
    isVisible = !isVisible;
    emit(changeVisibiltyState());
  }
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



}