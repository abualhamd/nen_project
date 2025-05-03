import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_register.freezed.dart';
part 'input_register.g.dart';

@freezed
abstract class InputRegister with _$InputRegister {
  const factory InputRegister({
    required String name,
    required String email,
    required String password,
  }) = _InputRegister;

  factory InputRegister.fromJson(Map<String, Object?> json) =>
      _$InputRegisterFromJson(json);
}
