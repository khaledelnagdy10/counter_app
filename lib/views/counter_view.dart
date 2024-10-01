import 'package:counter_app/controller/cubit/counter_cubit.dart';
import 'package:counter_app/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});
  int newCounterPoints = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Counter')),
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          if (state is CounterSucsses) {
            newCounterPoints = state.counterPoints;
            return Text(
              "$newCounterPoints",
              style: TextStyle(fontSize: 80),
            );
          }
          return SizedBox();
        },
      )),
    );
  }
}
