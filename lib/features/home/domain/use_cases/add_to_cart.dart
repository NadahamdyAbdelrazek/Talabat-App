import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/CartModel.dart';
@injectable
class AddToCartUseCase {
  HomeRepo repo;

  AddToCartUseCase(this.repo);
  Future<Either<Failures, CartModel>> call(String productId) =>
      repo.addToCart(productId);
}
