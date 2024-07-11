import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:membrana/data/dtos/response/mes_response_dto.dart';
import 'package:membrana/data/source/api_data.dart';
import 'package:meta/meta.dart';

part 'meses_state.dart';

class MesesCubit extends Cubit<MesesState> {
    final logger = Logger();
  MesesCubit() : super(MesesInitial());

  Future getMeses() async {
    try {
      emit(MesesLoading());
      final dio = Dio();
      final client = ApiClient(dio);
      final response = await client.getMeses();
      if (response.isEmpty) {
        emit(MesesEmpty());
      } else {
        emit(MesesSuccess(response));
      }
    } catch (e) {
      logger.e('Error: $e');
      emit(MesesError());
    }
  }
}
