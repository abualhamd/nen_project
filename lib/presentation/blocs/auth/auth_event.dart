part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class RegisterEvent extends AuthEvent {
  final InputRegister input;

  const RegisterEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
class LoginEvent extends AuthEvent {
  final InputLogin input;

  const LoginEvent({required this.input});

  @override
  List<Object?> get props => [input];
}
