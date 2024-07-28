part of 'validation_cubit.dart';

@immutable
abstract class ValidationBlocState {}

final class ValidationBlocInitial extends ValidationBlocState {}

final class ValidationBlocSucess extends ValidationBlocState{}

final class ValidationBlocError extends ValidationBlocState{} 
