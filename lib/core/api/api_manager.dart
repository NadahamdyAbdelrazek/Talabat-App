import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';
@LazySingleton()
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }
  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? queryParam,Map<String, dynamic>? headers}) {
    return dio.get(Constants.BaseUrl + endPoint, queryParameters: queryParam,
        options: Options(
            headers: headers
        )
    );
  }

  Future<Response> postData(
      {required String endPoint, Map<String, dynamic>? body,Map<String, dynamic>? headers}) {
    return dio.post(Constants.BaseUrl + endPoint, data: body,
      options: Options(
        headers: headers
      )
    );
  }
}
