import 'package:counter_app/controller/cubit/counter_cubit.dart';
import 'package:counter_app/views/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterCubitApp());
}

class CounterCubitApp extends StatelessWidget {
  const CounterCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(home: CounterView()),
    );
  }
}
