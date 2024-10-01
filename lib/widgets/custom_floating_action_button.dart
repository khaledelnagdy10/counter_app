import 'package:counter_app/controller/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).counterIncrement();
          },
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
             BlocProvider.of<CounterCubit>(context).counterDecrement();
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
