// success_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'success_event.dart';
import 'success_state.dart';

class SuccessBloc extends Bloc<SuccessEvent, SuccessState> {
  SuccessBloc() : super(InitialState()) {
    on<TriggerSuccess>((event, emit) {
      emit(SuccessHappened());
    });
  }
}
