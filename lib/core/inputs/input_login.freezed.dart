// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputLogin {

 String get email; String get password;
/// Create a copy of InputLogin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputLoginCopyWith<InputLogin> get copyWith => _$InputLoginCopyWithImpl<InputLogin>(this as InputLogin, _$identity);

  /// Serializes this InputLogin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputLogin&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'InputLogin(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $InputLoginCopyWith<$Res>  {
  factory $InputLoginCopyWith(InputLogin value, $Res Function(InputLogin) _then) = _$InputLoginCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$InputLoginCopyWithImpl<$Res>
    implements $InputLoginCopyWith<$Res> {
  _$InputLoginCopyWithImpl(this._self, this._then);

  final InputLogin _self;
  final $Res Function(InputLogin) _then;

/// Create a copy of InputLogin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InputLogin implements InputLogin {
  const _InputLogin({required this.email, required this.password});
  factory _InputLogin.fromJson(Map<String, dynamic> json) => _$InputLoginFromJson(json);

@override final  String email;
@override final  String password;

/// Create a copy of InputLogin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputLoginCopyWith<_InputLogin> get copyWith => __$InputLoginCopyWithImpl<_InputLogin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputLoginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputLogin&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'InputLogin(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$InputLoginCopyWith<$Res> implements $InputLoginCopyWith<$Res> {
  factory _$InputLoginCopyWith(_InputLogin value, $Res Function(_InputLogin) _then) = __$InputLoginCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$InputLoginCopyWithImpl<$Res>
    implements _$InputLoginCopyWith<$Res> {
  __$InputLoginCopyWithImpl(this._self, this._then);

  final _InputLogin _self;
  final $Res Function(_InputLogin) _then;

/// Create a copy of InputLogin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_InputLogin(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
