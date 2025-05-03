import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart' show InputRegister, InputLogin;
import '../../../domain/domain.dart' show AuthRepo;

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepo repo}) : super(AuthInitialState()) {
    on<RegisterEvent>((event, emit) async {
      emit(const RegisterLoadingState());
      final result = await repo.register(event.input);
      final resultingState = result.fold(
        (failure) {
          return RegisterFailureState(msg: failure.msg);
        },
        (nothing) {
          return const RegisterSuccessState();
        },
      );

      emit(resultingState);
    });

    on<LoginEvent>((event, emit) async {
      emit(const LoginLoadingState());
      final result = await repo.login(event.input);
      final resultingState = result.fold(
        (failure) {
          return LoginFailureState(msg: failure.msg);
        },
        (nothing) {
          return const LoginSuccessState();
        },
      );

      emit(resultingState);
    });
  }
}
