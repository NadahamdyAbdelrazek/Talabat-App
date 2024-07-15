import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/home/data/data_sources/home_ds.dart';
import 'package:ecommerce_app/features/home/data/models/BrandModel.dart';
import 'package:ecommerce_app/features/home/data/models/CartModel.dart';
import 'package:ecommerce_app/features/home/data/models/CategoreyModel.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo{
  HomeDs ds;

  HomeRepoImpl(this.ds);

  @override
  Future<Either<Failures, CategoreyModel>> getCategories() async{
    try{
      var result= await ds.getCategories();
      return right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

  @override
  Future<Either<Failures, BrandModel>> getBrands() async{
    try{
      var result= await ds.getBrands();
      return Right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

  @override
  Future<Either<Failures, ProductModel>> getProducts()async {
    try{
      var result= await ds.getProducts();
      return Right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

  @override
  Future<Either<Failures, CartModel>> addToCart(String productId) async{
    try{
      var result= await ds.addToCart(productId);
      return Right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

  @override
  Future<Either<Failures, CartModel>> getCartItem() async{
    try{
      var result= await ds.getCartItem();
      return Right(result);

    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }

}