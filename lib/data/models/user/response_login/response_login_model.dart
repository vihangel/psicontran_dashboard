import 'package:json_annotation/json_annotation.dart';

part 'response_login_model.g.dart';

@JsonSerializable()
class ResponseUserLoginModel {
  final String name;

  final String password;
  final String error;
  final String? token;

  ResponseUserLoginModel({
    required this.name,
    required this.password,
    required this.error,
    this.token,
  });

  factory ResponseUserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserLoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseUserLoginModelToJson(this);
}
