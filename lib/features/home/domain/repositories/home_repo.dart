import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/home/data/models/BrandModel.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';
import '../../data/models/CartModel.dart';
import '../../data/models/CategoreyModel.dart';

abstract class HomeRepo{
  Future<Either<Failures,CategoreyModel>> getCategories();
  Future<Either<Failures,BrandModel>> getBrands();
  Future<Either<Failures,ProductModel>> getProducts();
  Future<Either<Failures,CartModel>> addToCart(String productId);
  Future<Either<Failures,CartModel>> getCartItem();



}