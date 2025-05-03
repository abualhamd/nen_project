import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login.freezed.dart';
part 'input_login.g.dart';


@freezed
abstract class InputLogin with _$InputLogin {
  const factory InputLogin({
    required String email,
    required String password,
  }) = _InputLogin;

  factory InputLogin.fromJson(Map<String, Object?> json) =>
      _$InputLoginFromJson(json);
}
