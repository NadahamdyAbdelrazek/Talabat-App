import 'package:ecommerce_app/features/login/data/models/UserModel.dart';

abstract class RemoteLoginDs{
  Future<UserModel> login(String email,String password);
}