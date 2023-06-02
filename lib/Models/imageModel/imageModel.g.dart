// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      id: json['id'] as int?,
      fileName: json['fileName'] as String?,
      conversions: json['conversions'] == null
          ? null
          : ConverModel.fromJson(json['conversions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'conversions': instance.conversions,
    };
