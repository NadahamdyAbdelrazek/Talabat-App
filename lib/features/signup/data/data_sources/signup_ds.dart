import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';

import '../../../login/data/models/UserModel.dart';

abstract class SignUpDs{
  Future<UserModel> SignUp(SignUpRequest request);
}