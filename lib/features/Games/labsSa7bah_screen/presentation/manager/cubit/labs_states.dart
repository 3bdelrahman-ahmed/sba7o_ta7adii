import 'package:equatable/equatable.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/pages/meenxelsora_screen.dart';

abstract class LabsStates extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends LabsStates {}

class LoadingState extends LabsStates {}

class changeVisibiltyState extends LabsStates {}

class CounterIncreamentState extends LabsStates {}

class MazadChangeState extends LabsStates{}

class CounterDecreamentState extends LabsStates {}

class TimerRunningState extends LabsStates{
  final int seconds;
  TimerRunningState({required this.seconds});

  @override
  List<Object?> get props => [seconds];
}

class TimerCompletedState extends LabsStates{}

class SuccessGetQuest extends LabsStates {}

class FailedGetQuest extends LabsStates {}
