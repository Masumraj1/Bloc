import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return Column(
                children: [
                  TextField(
                    controller: emailCtrl,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: passCtrl,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  SizedBox(height: 20),
                  state is AuthLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                    onPressed: () {
                      context.read<AuthCubit>().login(
                        emailCtrl.text,
                        passCtrl.text,
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
