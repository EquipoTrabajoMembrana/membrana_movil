// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periodo_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeriodoResponseDto _$PeriodoResponseDtoFromJson(Map<String, dynamic> json) =>
    PeriodoResponseDto(
      idPeriodo: json['idPeriodo'] as String?,
      nombre: json['nombre'] as String?,
      visible: json['visible'] as bool?,
      fechaRegistro: json['fechaRegistro'] as String,
      fechaActualizacion: json['fechaActualizacion'] as String?,
      idUsuarioRegistro: json['idUsuarioRegistro'] as String?,
      idUsuarioActualizacion: json['idUsuarioActualizacion'] as String?,
    );

Map<String, dynamic> _$PeriodoResponseDtoToJson(PeriodoResponseDto instance) =>
    <String, dynamic>{
      'idPeriodo': instance.idPeriodo,
      'nombre': instance.nombre,
      'visible': instance.visible,
      'fechaRegistro': instance.fechaRegistro,
      'fechaActualizacion': instance.fechaActualizacion,
      'idUsuarioRegistro': instance.idUsuarioRegistro,
      'idUsuarioActualizacion': instance.idUsuarioActualizacion,
    };
