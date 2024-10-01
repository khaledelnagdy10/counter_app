import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counterPoints = 0;
  Future counterIncrement() async{
    try {
      counterPoints = counterPoints + 1;

      emit(CounterSucsses(counterPoints: counterPoints));
    } on Exception catch (e) {
      throw e;
    }
    
  }


  Future counterDecrement() async{
    try {
      counterPoints = counterPoints - 1;

      emit(CounterSucsses(counterPoints: counterPoints));
    } on Exception catch (e) {
      throw e;
    }
    
  }
}
