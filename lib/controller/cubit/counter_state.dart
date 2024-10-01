part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterFailure extends CounterState {}

final class CounterSucsses extends CounterState {
  final int counterPoints ;

  CounterSucsses({required this.counterPoints});

}
