import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, BlocSelector, ReadContext;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:nen_project/core/core.dart';

import '../../app/app.dart' show RouteNames;
import '../blocs.dart'
    show
        AuthBloc,
        AuthState,
        LoginEvent,
        LoginFailureState,
        LoginLoadingState,
        LoginSuccessState;

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case LoginSuccessState():
            context.goNamed(RouteNames.home);

            break;
          case LoginFailureState():
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.msg),
                duration: Duration(seconds: 2),
              ),
            );

            break;
          default:
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (!(formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        if (context.read<AuthBloc>().state
                            is LoginLoadingState) {
                          return;
                        }

                        context.read<AuthBloc>().add(
                          LoginEvent(
                            input: InputLogin(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          ),
                        );
                      },
                      child: BlocSelector<AuthBloc, AuthState, bool>(
                        selector: (state) {
                          return state is LoginLoadingState;
                        },
                        builder: (context, isLoading) {
                          return isLoading
                              ? CircularProgressIndicator.adaptive()
                              : const Text('Login');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  context.goNamed(RouteNames.register);
                },
                child: const Text('Don\'t have an account?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
