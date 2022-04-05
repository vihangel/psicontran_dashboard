// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_storage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalStorageModel _$LocalStorageModelFromJson(Map<String, dynamic> json) {
  return LocalStorageModel(
    name: json['name'] as String?,
    email: json['email'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$LocalStorageModelToJson(LocalStorageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
    };
