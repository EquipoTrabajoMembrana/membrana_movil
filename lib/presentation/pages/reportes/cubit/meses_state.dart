part of 'meses_cubit.dart';

@immutable
abstract class MesesState {
  final List<MesResponseDto>? meses;

  MesesState({this.meses});
}

final class MesesInitial extends MesesState {}

class MesesLoading extends MesesState {}

class MesesSuccess extends MesesState {
  final List<MesResponseDto>? newMeses;

  MesesSuccess(this.newMeses) : super(meses: newMeses);
}

class MesesError extends MesesState {}

class MesesEmpty extends MesesState {}
