import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'validation_states.dart';

class ValidationCubit extends Cubit<ValidationBlocState> {
  ValidationCubit() : super(ValidationBlocInitial());

  void validationState(bool check){
    if(check){
      emit(ValidationBlocSucess());
    }
    else{
      emit(ValidationBlocError());
    }
    
  }
}
