import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nen_project/core/inputs/input_register.dart';

import '../../app/app.dart' show RouteNames;
import '../blocs.dart'
    show
        AuthBloc,
        AuthState,
        RegisterEvent,
        RegisterLoadingState,
        RegisterSuccessState;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case RegisterSuccessState():
            context.goNamed(RouteNames.login);
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                RegisterEvent(
                  input: InputRegister(
                    name: "name",
                    email: "email",
                    password: "password",
                  ),
                ),
              );
            },
            child: BlocSelector<AuthBloc, AuthState, bool>(
              selector: (state) {
                return state is RegisterLoadingState;
              },
              builder: (context, isLoading) {
                return isLoading
                    ? CircularProgressIndicator.adaptive()
                    : const Text('Register');
              },
            ),
          ),
        ),
      ),
    );
  }
}
