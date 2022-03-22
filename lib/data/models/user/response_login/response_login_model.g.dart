// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUserLoginModel _$ResponseUserLoginModelFromJson(
    Map<String, dynamic> json) {
  return ResponseUserLoginModel(
    name: json['name'] as String,
    password: json['password'] as String,
    error: json['error'] as String,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$ResponseUserLoginModelToJson(
        ResponseUserLoginModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'error': instance.error,
      'token': instance.token,
    };
