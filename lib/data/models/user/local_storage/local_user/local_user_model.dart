import 'package:json_annotation/json_annotation.dart';

part 'local_user_model.g.dart';

@JsonSerializable()
class LocalUser {
  final String name;

  final String email;

  LocalUser({
    required this.name,
    required this.email,
  });

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);
  Map<String, dynamic> toJson() => _$LocalUserToJson(this);
}
