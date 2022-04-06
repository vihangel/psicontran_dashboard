import 'package:json_annotation/json_annotation.dart';

part 'user_list_model.g.dart';

@JsonSerializable()
class UserListModel {
  final String name;

  final String password;

  UserListModel({
    required this.name,
    required this.password,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserListModelToJson(this);
}
