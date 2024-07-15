import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/login/data/datasource/remote/remote_login_ds.dart';
import 'package:ecommerce_app/features/login/data/models/UserModel.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';

class RemoteLoginDsImpl implements RemoteLoginDs {
  @override
  Future<UserModel> login(String email, String password) async {
    ApiManager apiManager = ApiManager();
    var responce = await apiManager.postData(endPoint: EndPoints.Login, body: {
      "email": email,
      "password": password,
    });
    UserModel userModel=UserModel.fromJson(responce.data);
    return userModel;
  }
}
