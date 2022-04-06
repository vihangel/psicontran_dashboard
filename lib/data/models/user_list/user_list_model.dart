import 'package:json_annotation/json_annotation.dart';

part 'user_list_model.g.dart';

@JsonSerializable()
class UserListModel {
  final String? name;

  final String? cpf;

  @JsonKey(name: '_id')
  final String? id;

  final String? renach;

  final String? categoria;
  @JsonKey(name: 'data_nascimento')
  final String? dataNascimento;

  @JsonKey(name: 'identidade')
  final String? rg;

  final String? autoescola;

  final String? taxa;

  final String? motivo;
  final String? createdAt;
  UserListModel(
    this.cpf,
    this.id,
    this.renach,
    this.categoria,
    this.dataNascimento,
    this.rg,
    this.autoescola,
    this.taxa,
    this.motivo,
    this.createdAt, {
    this.name,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserListModelToJson(this);
}
