import '../../core/core.dart'
    show
        FutureEitherFailureOr,
        InputLogin,
        InputRegister,
        LoginResponse,
        Nothing;

abstract class AuthRepo {
  FutureEitherFailureOr<LoginResponse> login(InputLogin input);

  FutureEitherFailureOr<Nothing> register(InputRegister input);
}
