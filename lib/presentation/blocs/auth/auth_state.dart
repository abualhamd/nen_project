part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

/// the base states of the auth bloc
abstract class UnAuthenticatedState extends AuthState {
  const UnAuthenticatedState();
}

abstract class AuthenticatedState extends AuthState {
  const AuthenticatedState();
}

/// states
class AuthInitialState extends UnAuthenticatedState {
  const AuthInitialState();
}

/// Register states
class RegisterLoadingState extends UnAuthenticatedState {
  const RegisterLoadingState();
}

class RegisterFailureState extends UnAuthenticatedState {
  final String msg;

  const RegisterFailureState({required this.msg});

  @override
  List<Object?> get props => [msg];
}

class RegisterSuccessState extends UnAuthenticatedState {
  const RegisterSuccessState();
}
/// Login states
class LoginLoadingState extends UnAuthenticatedState {
  const LoginLoadingState();
}

class LoginFailureState extends UnAuthenticatedState {
  final String msg;

  const LoginFailureState({required this.msg});

  @override
  List<Object?> get props => [msg];
}

class LoginSuccessState extends AuthenticatedState {
  const LoginSuccessState();
}
