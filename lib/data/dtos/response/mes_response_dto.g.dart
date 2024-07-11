// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mes_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MesResponseDto _$MesResponseDtoFromJson(Map<String, dynamic> json) =>
    MesResponseDto(
      idMes: json['idMes'] as String?,
      nombre: json['nombre'] as String?,
      fechaRegistro: json['fechaRegistro'] as String,
      fechaActualizacion: json['fechaActualizacion'] as String?,
      idUsuarioRegistro: json['idUsuarioRegistro'] as String?,
      idUsuarioActualizacion: json['idUsuarioActualizacion'] as String?,
    );

Map<String, dynamic> _$MesResponseDtoToJson(MesResponseDto instance) =>
    <String, dynamic>{
      'idMes': instance.idMes,
      'nombre': instance.nombre,
      'fechaRegistro': instance.fechaRegistro,
      'fechaActualizacion': instance.fechaActualizacion,
      'idUsuarioRegistro': instance.idUsuarioRegistro,
      'idUsuarioActualizacion': instance.idUsuarioActualizacion,
    };
