part of 'signup_bloc.dart';

@immutable
class SignupState {
  RequestStatus? status;
  ResponceEntity? entity;
  Failures? failures;

  SignupState({this.status, this.entity, this.failures});

  SignupState copWith(
      {RequestStatus? status, ResponceEntity? entity, Failures? failures}) {
    return SignupState(
        status: status ?? this.status,
        entity: entity ?? this.entity,
        failures: failures ?? this.failures);
  }
}
class SignUpInitState extends SignupState{
  SignUpInitState():super(status: RequestStatus.init);
}


