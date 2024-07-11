import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:membrana/data/dtos/response/periodo_response_dto.dart';
import 'package:membrana/data/source/api_data.dart';
import 'package:meta/meta.dart';

part 'periodos_state.dart';

class PeriodosCubit extends Cubit<PeriodosState> {
  final logger = Logger();
  PeriodosCubit() : super(PeriodosInitial());

  Future getPeriodos() async {
    try {
      emit(PeriodosLoading());
      final dio = Dio();
      final client = ApiClient(dio);
      final response = await client.getPeriodos();
      if (response.isEmpty) {
        emit(PeriodosEmpty());
      } else {
        emit(PeriodosSuccess(response));
      }
    } catch (e) {
      logger.e('Error: $e');
      emit(PeriodosError());
    }
  }
}
