import 'package:equatable/equatable.dart';

class ResponceEntity extends Equatable{
  ResponceEntity({
      this.user, 
      this.token,});

  UserEntity? user;
  String? token;

  @override
  List<Object?> get props => [token,user];

}

class UserEntity extends Equatable{
  UserEntity({
      this.name, 
      this.email, 
      });

  String? name;
  String? email;

  @override
  List<Object?> get props => [name,email];

}