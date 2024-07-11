part of 'periodos_cubit.dart';

@immutable
abstract class PeriodosState {
  final List<PeriodoResponseDto>? periodos;

  PeriodosState({this.periodos});
}

final class PeriodosInitial extends PeriodosState {}

class PeriodoInitial extends PeriodosState {}

class PeriodosLoading extends PeriodosState {}

class PeriodosSuccess extends PeriodosState {
  final List<PeriodoResponseDto>? newPeriodos;

  PeriodosSuccess(this.newPeriodos) : super(periodos: newPeriodos);
}

class PeriodosError extends PeriodosState {}

class PeriodosEmpty extends PeriodosState {}
