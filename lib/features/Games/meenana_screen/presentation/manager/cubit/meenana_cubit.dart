import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spa7o_ta7adii/core/service/models/meenAnaDm.dart';
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
  String? firstcl;
  String? secondcl;
  String? thirdcl;
  String? fourthcl;
  String? fifthcl;
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
        firstcl = meenAnaDm!.first;
        secondcl = meenAnaDm!.second;
        thirdcl = meenAnaDm!.third;
        fourthcl = meenAnaDm!.fourth;
        fifthcl = meenAnaDm!.fifth;
        List<String?> Addingclues = [
          firstcl,
          secondcl,
          thirdcl,
          fourthcl,
          fifthcl
        ];
        Clues.addAll(Addingclues);
        Clues.add("خلصت خمن اسم اللاعب");
        isVisible = false;
        emit(SuccessGetMeenAnaPlayer());
      }
    }on Exception catch(e)
    {
      emit(FailedGetMeenAnaPlayer());
    }
  }
   void addingclue(){
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
    print("changevisibility");
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