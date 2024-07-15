part of 'login_bloc.dart';

@immutable
class LoginState {
  RequestStatus? status;
  ResponceEntity? entity;
  Failures? failures;

  LoginState({this.status, this.entity, this.failures});

  LoginState copWith(
      {RequestStatus? status, ResponceEntity? entity, Failures? failures}) {
    return LoginState(
        status: status ?? this.status,
        entity: entity ?? this.entity,
        failures: failures ?? this.failures);
  }
}
class LoginInitState extends LoginState{
  LoginInitState():super(
    status: RequestStatus.init
  );
}