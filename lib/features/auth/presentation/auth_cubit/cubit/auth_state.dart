part of 'auth_cubit.dart';

class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSignUpLoadingState extends AuthState {}

final class AuthSignUpSuccessState extends AuthState {}

final class AuthSignUpFailureState extends AuthState {
  final String errMessage;

  AuthSignUpFailureState({required this.errMessage});
}

final class TermsAndConditionUpdateState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}

final class AuthSignInLoadingState extends AuthState {}

final class AuthSignInSuccessState extends AuthState {}

final class AuthSignInFailureState extends AuthState {
  final String errMessage;

  AuthSignInFailureState({required this.errMessage});
}

final class AuthForgotPasswordLoadingState extends AuthState {}

final class AuthForgotPasswordSuccessState extends AuthState {}

final class AuthForgotPasswordFailureState extends AuthState {
  final String errMessage;

  AuthForgotPasswordFailureState({required this.errMessage});
}
