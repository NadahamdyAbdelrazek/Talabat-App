import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/login/data/models/UserModel.dart';
import 'package:ecommerce_app/features/signup/data/data_sources/signup_ds.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';

class SignUpDsImpl implements SignUpDs {
  @override
  Future<UserModel> SignUp(SignUpRequest request) async {
    ApiManager apiManager = ApiManager();
    var response = await apiManager.postData(
        endPoint: EndPoints.Signup, body: request.toJson());
    UserModel userModel=UserModel.fromJson(response.data);
    return userModel;
  }
}
