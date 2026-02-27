part of 'payement_cubit.dart';

@immutable
sealed class PayementState {}

final class PayementInitial extends PayementState {}

final class PayementLoading extends PayementState {}

final class PayementSuccess extends PayementState {}

final class PayementFailure extends PayementState {
  final String errorMessage;

  PayementFailure({required this.errorMessage});
}
