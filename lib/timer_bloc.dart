import 'dart:async';
import 'package:bloc/bloc.dart';

class TimerBloc extends Bloc<ToggleTimerBlocEvent, TimerBlocState> {
  final int initialCount;

  TimerBloc({this.initialCount = 0}) : super();

  @override
  Stream<TimerBlocState> mapEventToState(ToggleTimerBlocEvent event) async* {
    final CounterTimerBlocState state = this.state as CounterTimerBlocState;
    yield LoadingTimerBlocState();
    await Future.delayed(const Duration(seconds: 1));
    yield state.incrementedBy(1);
  }

  @override
  TimerBlocState get initialState => CounterTimerBlocState(this.initialCount);
}

class ToggleTimerBlocEvent {}

abstract class TimerBlocState {}

class CounterTimerBlocState extends TimerBlocState {
  final int counter;
  CounterTimerBlocState(this.counter);

  TimerBlocState incrementedBy(int by) {
    return CounterTimerBlocState(this.counter + by);
  }
}

class LoadingTimerBlocState extends TimerBlocState {}
