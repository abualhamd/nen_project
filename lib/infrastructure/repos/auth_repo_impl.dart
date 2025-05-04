import 'package:fpdart/fpdart.dart' show Left, Right;

import '../../core/core.dart'
    show
        DataMappingFailure,
        FutureEitherFailureOr,
        InputLogin,
        InputRegister,
        LoginResponse,
        Nothing,
        ServerFailure;
import '../../domain/domain.dart' show AuthRepo;
import '../datasources.dart' show AuthDatasource;

class AuthRepoImpl implements AuthRepo {
  final AuthDatasource _datasource;

  AuthRepoImpl({required AuthDatasource datasource}) : _datasource = datasource;

  @override
  FutureEitherFailureOr<LoginResponse> login(InputLogin input) async {
    final result = await _datasource.login(input);
    return result.fold((failure) => Left(failure), (response) {
      try {
        if (!(response.isSuccess ?? false)) {
          return Left(
            ServerFailure(
              response.errors?.reduce((value, element) => "$value, $element") ??
                  "Login failed",
            ),
          );
        }
        final model = LoginResponse.fromJson(response.value);
        return Right(model);
      } catch (e) {
        return Left(DataMappingFailure(e.toString()));
      }
    });
  }

  @override
  FutureEitherFailureOr<Nothing> register(InputRegister input) async {
    final result = await _datasource.register(input);
    return result.fold((failure) => Left(failure), (response) {
      if (response.isSuccess ?? false) {
        return Right(Nothing());
      } else {
        return Left(
          ServerFailure(
            response.errors?.reduce((value, element) => "$value; $element") ??
                "Registration failed",
          ),
        );
      }
    });
  }
}
