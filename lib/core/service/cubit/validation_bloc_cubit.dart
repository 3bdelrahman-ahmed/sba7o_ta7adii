import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'validation_bloc_state.dart';

class ValidationBlocCubit extends Cubit<ValidationBlocState> {
  ValidationBlocCubit() : super(ValidationBlocInitial());


  void validationState(bool check){
    if(check){
      emit(ValidationBlocSucess());
    }
    else{
      emit(ValidationBlocError());
    }
    
  }
}
