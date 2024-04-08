import 'package:bloc/bloc.dart';
import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/manager/cubit/bloc_states.dart';

class ArostyBlocCubit extends Cubit<ArostyBlocState> {
  ArostyBlocCubit() : super (InitialState()){}
  int team1=0;
  int team2=0;
  int counter=0;

  void counterState(String state){
    if(state =="Inc"){
      counter++;
    }
    else {
      if(counter>0)
        {
          counter--;
        }
    }
    emit(CounterChangeState());
  }
  void teamsIncreament(String team){
    if(team == 'A'){
      team1++;
    }
    else{
      team2++;
    }
    emit(CounterTeamIncreamentState());
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
    emit(CounterTeamDecreamentState());
  }
}