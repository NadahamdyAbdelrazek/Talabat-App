import 'package:ecommerce_app/features/home/data/models/BrandModel.dart';
import 'package:ecommerce_app/features/home/data/models/CartModel.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';

import '../models/CategoreyModel.dart';

abstract class HomeDs{
  Future<CategoreyModel> getCategories();
  Future<BrandModel> getBrands();
  Future<ProductModel> getProducts();
  Future<CartModel> addToCart(String productId);
  Future<CartModel> getCartItem();
}
