import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:fpdart/fpdart.dart' show Left, Right;

import '../../../core/core.dart'
    show
        AssetsManager,
        FutureEitherFailureOr,
        InputLogin,
        InputRegister,
        ResponseModel,
        ServerFailure;
import '../abstractions.dart' show AuthDatasource;

class AuthDatasourceImpl implements AuthDatasource {
  @override
  FutureEitherFailureOr<ResponseModel> login(InputLogin input) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final jsonString = await rootBundle.loadString(
        AssetsManager.jsonLoginResponse,
      );
      final fakeJson = jsonDecode(jsonString);
      final result = ResponseModel.fromJson(fakeJson);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  FutureEitherFailureOr<ResponseModel> register(InputRegister input) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final jsonString = await rootBundle.loadString(
        AssetsManager.jsonSignupResponse,
      );
      final fakeJson = jsonDecode(jsonString);
      final result = ResponseModel.fromJson(fakeJson);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
