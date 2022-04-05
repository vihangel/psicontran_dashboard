// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalUser _$LocalUserFromJson(Map<String, dynamic> json) {
  return LocalUser(
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$LocalUserToJson(LocalUser instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };
