import 'package:json_annotation/json_annotation.dart';

part 'periodo_response_dto.g.dart';

@JsonSerializable()
class PeriodoResponseDto {
  PeriodoResponseDto({
    required this.idPeriodo,
    required this.nombre,
    required this.visible,
    required this.fechaRegistro,
    this.fechaActualizacion,
    required this.idUsuarioRegistro,
    this.idUsuarioActualizacion,
  });
  String? idPeriodo;
  String? nombre;
  bool? visible;
  String fechaRegistro;
  String? fechaActualizacion;
  String? idUsuarioRegistro;
  String? idUsuarioActualizacion;

  factory PeriodoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PeriodoResponseDtoFromJson(json);
  Map<String, dynamic> toJson() => _$PeriodoResponseDtoToJson(this);
}
