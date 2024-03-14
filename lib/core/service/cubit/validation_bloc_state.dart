part of 'validation_bloc_cubit.dart';

@immutable
sealed class ValidationBlocState {}

final class ValidationBlocInitial extends ValidationBlocState {}


final class ValidationBlocSucess extends ValidationBlocState{}

final class ValidationBlocError extends ValidationBlocState{} 
