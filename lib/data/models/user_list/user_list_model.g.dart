// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) {
  return UserListModel(
    json['cpf'] as String?,
    json['_id'] as String?,
    json['renach'] as String?,
    json['categoria'] as String?,
    json['data_nascimento'] as String?,
    json['identidade'] as String?,
    json['autoescola'] as String?,
    json['taxa'] as String?,
    json['motivo'] as String?,
    json['createdAt'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$UserListModelToJson(UserListModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      '_id': instance.id,
      'renach': instance.renach,
      'categoria': instance.categoria,
      'data_nascimento': instance.dataNascimento,
      'identidade': instance.rg,
      'autoescola': instance.autoescola,
      'taxa': instance.taxa,
      'motivo': instance.motivo,
      'createdAt': instance.createdAt,
    };
