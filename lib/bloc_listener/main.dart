import 'package:bloc_app/bloc_listener/success_bloc.dart';
import 'package:bloc_app/bloc_listener/success_event.dart';
import 'package:bloc_app/bloc_listener/success_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => SuccessBloc(),
        child: const ListenerScreen(),
      ),
    );
  }
}

class ListenerScreen extends StatelessWidget {
  const ListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BlocListener Only")),

      body: BlocListener<SuccessBloc, SuccessState>(
        listener: (context, state) {
          if (state is SuccessHappened) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("✅ Success state received!")),
            );
          }
        },
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<SuccessBloc>().add(TriggerSuccess());
            },
            child: const Text("Trigger Success"),
          ),
        ),
      ),
    );
  }
}
