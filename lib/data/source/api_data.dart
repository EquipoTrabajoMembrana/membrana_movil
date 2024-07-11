import 'package:dio/dio.dart';
import 'package:membrana/data/dtos/response/mes_response_dto.dart';
// import 'package:membrana/data/dtos/response/api_response_dto.dart';
import 'package:membrana/data/dtos/response/periodo_response_dto.dart';
import 'package:membrana/data/source/app_resources.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_data.g.dart';

@RestApi(baseUrl: AppResources.apiUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/periodo")
  Future<List<PeriodoResponseDto>> getPeriodos();

  @GET("/mese")
  Future<List<MesResponseDto>> getMeses();
}
