import 'package:json_annotation/json_annotation.dart';

import '../local_storage/local_user/local_user_model.dart';

part 'response_login_model.g.dart';

@JsonSerializable()
class ResponseUserLoginModel {
  final LocalUser? user;
  final String? error;
  final String? token;

  ResponseUserLoginModel({
    this.user,
    this.error,
    this.token,
  });

  factory ResponseUserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserLoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseUserLoginModelToJson(this);
}
