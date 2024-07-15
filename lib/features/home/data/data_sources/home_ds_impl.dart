import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/core/cache/shared_pref.dart';
import 'package:ecommerce_app/features/home/data/data_sources/home_ds.dart';
import 'package:ecommerce_app/features/home/data/models/BrandModel.dart';
import 'package:ecommerce_app/features/home/data/models/CartModel.dart';
import 'package:ecommerce_app/features/home/data/models/CategoreyModel.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';

@Injectable(as: HomeDs)
class HomeDsImpl implements HomeDs {
  ApiManager apiManager;

  HomeDsImpl(this.apiManager);

  @override
  Future<CategoreyModel> getCategories() async {
    var responce = await apiManager.getData(endPoint: EndPoints.Categories);

    CategoreyModel categoreyModel = CategoreyModel.fromJson(responce.data);
    return categoreyModel;
  }

  @override
  Future<BrandModel> getBrands() async {
    var responce = await apiManager.getData(endPoint: EndPoints.Brands);

    BrandModel brandModel = BrandModel.fromJson(responce.data);
    return brandModel;
  }

  @override
  Future<ProductModel> getProducts() async {
    var responce = await apiManager.getData(endPoint: EndPoints.Products);
    ProductModel productModel = ProductModel.fromJson(responce.data);
    return productModel;
  }

  @override
  Future<CartModel> addToCart(String productId) async {
    String? token = CacheHelper.getToken("Token");
    var responce = await apiManager.postData(
        endPoint: EndPoints.AddToCart,
        body: {"productId": productId},
        headers: {"token": token});
    CartModel cartModel = CartModel.fromJson(responce.data);
    return cartModel;
  }

  @override
  Future<CartModel> getCartItem() async{
    String? token = CacheHelper.getToken("Token");
    var responce = await apiManager.getData(
        endPoint: EndPoints.AddToCart,
        headers: {"token": token});
    CartModel cartModel = CartModel.fromJson(responce.data);
    return cartModel;
  }
}
