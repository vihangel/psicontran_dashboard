import 'package:json_annotation/json_annotation.dart';

import '../user_list_model.dart';

part 'response_user_list_model.g.dart';

@JsonSerializable()
class ResponseUserListModel {
  final bool? error;

  final List<UserListModel>? users;

  ResponseUserListModel({
    this.error,
    this.users,
  });

  factory ResponseUserListModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserListModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseUserListModelToJson(this);
}
