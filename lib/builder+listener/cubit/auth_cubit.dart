import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void login(String email, String password) async {
    emit(AuthLoading());

    await Future.delayed(Duration(seconds: 2)); // Fake API delay

    if (email == 'admin' && password == '1234') {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure('Invalid email or password'));
    }
  }
}
