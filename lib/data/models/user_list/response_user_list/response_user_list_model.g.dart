// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUserListModel _$ResponseUserListModelFromJson(
    Map<String, dynamic> json) {
  return ResponseUserListModel(
    error: json['error'] as bool?,
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => UserListModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResponseUserListModelToJson(
        ResponseUserListModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'users': instance.users,
    };
