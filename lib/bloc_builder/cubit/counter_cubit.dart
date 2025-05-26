import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterValue extends CounterState {
  final int value;
  CounterValue(this.value);
}

class CounterCubit extends Cubit<CounterState> {
  int _counter = 0;
  CounterCubit() : super(CounterInitial());

  void increment() {
    _counter++;
    emit(CounterValue(_counter));
  }

  void decrement() {
    _counter--;
    emit(CounterValue(_counter));
  }
}
