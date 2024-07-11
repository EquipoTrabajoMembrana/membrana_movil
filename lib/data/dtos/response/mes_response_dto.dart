import 'package:json_annotation/json_annotation.dart';

part 'mes_response_dto.g.dart';

@JsonSerializable()
class MesResponseDto {
  MesResponseDto({
    this.idMes,
    this.nombre,
    this.fechaRegistro,
    this.fechaActualizacion,
    this.idUsuarioRegistro,
    this.idUsuarioActualizacion,
  });
  String? idMes;
  String? nombre;
  String? fechaRegistro;
  String? fechaActualizacion;
  String? idUsuarioRegistro;
  String? idUsuarioActualizacion;

  factory MesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MesResponseDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MesResponseDtoToJson(this);
}
