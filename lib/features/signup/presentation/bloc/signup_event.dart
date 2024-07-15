part of 'signup_bloc.dart';

@immutable
class SignupEvent {}
class SignupButtonEvent extends SignupEvent{
  SignUpRequest request;

  SignupButtonEvent(this.request);
}