import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_data.g.dart';

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
}
