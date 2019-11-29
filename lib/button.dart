import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'timer_bloc.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        BlocProvider.of<TimerBloc>(context).add(ToggleTimerBlocEvent());
      },
    );
  }
}
