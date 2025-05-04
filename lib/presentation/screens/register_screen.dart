import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:nen_project/core/inputs/input_register.dart';

import '../../app/app.dart' show RouteNames;
import '../blocs.dart'
    show
        AuthBloc,
        AuthState,
        RegisterEvent,
        RegisterFailureState,
        RegisterLoadingState,
        RegisterSuccessState;

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    final formKey = useMemoized(() => GlobalKey<FormState>());

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        switch (state) {
          case RegisterSuccessState():
            context.goNamed(RouteNames.login);
            break;
          case RegisterFailureState():
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.msg),
                duration: Duration(seconds: 2),
              ),
            );
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
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
                    TextFormField(
                      controller: confirmPasswordController,
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (!(formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        if (context.read<AuthBloc>().state
                            is RegisterLoadingState) {
                          return;
                        }
                        context.read<AuthBloc>().add(
                          RegisterEvent(
                            input: InputRegister(
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
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
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  context.goNamed(RouteNames.login);
                },
                child: const Text('Already have an account?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
