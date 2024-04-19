import 'package:bloc/bloc.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/manager/cubit/meenana_states.dart';

class MeenAnaBlocCubit extends Cubit<MeenAnaBlocStates> {
  MeenAnaBlocCubit() : super(InitialState());

  int team1 = 0;
  int team2 = 0;
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