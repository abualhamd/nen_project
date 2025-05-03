import '../../../core/core.dart'
    show FutureEitherFailureOr, InputLogin, InputRegister, ResponseModel;

abstract class AuthDatasource {
  FutureEitherFailureOr<ResponseModel> login(InputLogin input);

  FutureEitherFailureOr<ResponseModel> register(InputRegister input);
}
