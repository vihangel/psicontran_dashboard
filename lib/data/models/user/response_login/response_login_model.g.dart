// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUserLoginModel _$ResponseUserLoginModelFromJson(
    Map<String, dynamic> json) {
  return ResponseUserLoginModel(
    user: json['user'] == null
        ? null
        : LocalUser.fromJson(json['user'] as Map<String, dynamic>),
    error: json['error'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$ResponseUserLoginModelToJson(
        ResponseUserLoginModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'error': instance.error,
      'token': instance.token,
    };
