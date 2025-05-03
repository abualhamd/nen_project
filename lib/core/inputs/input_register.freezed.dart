// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputRegister {

 String get name; String get email; String get password;
/// Create a copy of InputRegister
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputRegisterCopyWith<InputRegister> get copyWith => _$InputRegisterCopyWithImpl<InputRegister>(this as InputRegister, _$identity);

  /// Serializes this InputRegister to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputRegister&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'InputRegister(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $InputRegisterCopyWith<$Res>  {
  factory $InputRegisterCopyWith(InputRegister value, $Res Function(InputRegister) _then) = _$InputRegisterCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class _$InputRegisterCopyWithImpl<$Res>
    implements $InputRegisterCopyWith<$Res> {
  _$InputRegisterCopyWithImpl(this._self, this._then);

  final InputRegister _self;
  final $Res Function(InputRegister) _then;

/// Create a copy of InputRegister
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InputRegister implements InputRegister {
  const _InputRegister({required this.name, required this.email, required this.password});
  factory _InputRegister.fromJson(Map<String, dynamic> json) => _$InputRegisterFromJson(json);

@override final  String name;
@override final  String email;
@override final  String password;

/// Create a copy of InputRegister
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputRegisterCopyWith<_InputRegister> get copyWith => __$InputRegisterCopyWithImpl<_InputRegister>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputRegisterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputRegister&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'InputRegister(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$InputRegisterCopyWith<$Res> implements $InputRegisterCopyWith<$Res> {
  factory _$InputRegisterCopyWith(_InputRegister value, $Res Function(_InputRegister) _then) = __$InputRegisterCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class __$InputRegisterCopyWithImpl<$Res>
    implements _$InputRegisterCopyWith<$Res> {
  __$InputRegisterCopyWithImpl(this._self, this._then);

  final _InputRegister _self;
  final $Res Function(_InputRegister) _then;

/// Create a copy of InputRegister
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(_InputRegister(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
