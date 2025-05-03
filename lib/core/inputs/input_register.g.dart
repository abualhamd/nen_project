// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputRegister _$InputRegisterFromJson(Map<String, dynamic> json) =>
    _InputRegister(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$InputRegisterToJson(_InputRegister instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
