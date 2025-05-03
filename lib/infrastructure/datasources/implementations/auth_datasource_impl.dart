import 'package:fpdart/fpdart.dart' show Right;

import '../../../core/core.dart'
    show FutureEitherFailureOr, InputLogin, InputRegister, ResponseModel;
import '../abstractions.dart' show AuthDatasource;

class AuthDatasourceImpl implements AuthDatasource {
  @override
  FutureEitherFailureOr<ResponseModel> login(InputLogin input) async {
    final result = ResponseModel.fromJson({
      "isSuccess": true,
      "value": {
        "access_token": "random_token",
        "refresh_token": "random_refresh_token",
      },
    });
    return Right(result);
  }

  @override
  FutureEitherFailureOr<ResponseModel> register(InputRegister input) async {
    final result = ResponseModel.fromJson({"isSuccess": true});

    return Right(result);
  }
}
