part of 'mycart_cubit.dart';

@immutable
sealed class MycartState {}

final class MycartInitial extends MycartState {}
final class MycartLoading extends MycartState {}
final class MycartSuccess extends MycartState {}
final class MycartFailure extends MycartState {
  final String errMessage;

  MycartFailure({required this.errMessage});

}
