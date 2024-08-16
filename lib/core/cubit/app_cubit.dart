import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());


  bool showAnswers = false;

  void showAndHideAnswers() {
    showAnswers = !showAnswers;
    emit(ChangeAnswerWidgetState());
  }
}
