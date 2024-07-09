import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reportes_state.dart';

class ReportesCubit extends Cubit<ReportesState> {
  ReportesCubit() : super(ReportesInitial());
}
