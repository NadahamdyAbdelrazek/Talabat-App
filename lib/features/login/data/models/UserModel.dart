import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';

class UserModel extends ResponceEntity {
  UserModel({
      this.message, 
      super.user,
      super.token,});

  UserModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;

}

class User extends UserEntity {
  User({
      super.name,
      super.email,
      this.role,});

  User.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }

  String? role;


}