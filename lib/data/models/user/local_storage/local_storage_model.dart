import 'package:json_annotation/json_annotation.dart';

import 'local_user/local_user_model.dart';

part 'local_storage_model.g.dart';

@JsonSerializable()
class LocalStorageModel {
  final String? name;
  final String? email;
  final String? token;

  LocalStorageModel({
    this.name,
    this.email,
    this.token,
  });

  factory LocalStorageModel.fromJson(Map<String, dynamic> json) =>
      _$LocalStorageModelFromJson(json);
  Map<String, dynamic> toJson() => _$LocalStorageModelToJson(this);
}
