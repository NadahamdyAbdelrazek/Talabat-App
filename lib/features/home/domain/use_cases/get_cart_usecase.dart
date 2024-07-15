import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/CartModel.dart';
@injectable
class GetCartItemUseCase {
  HomeRepo repo;

  GetCartItemUseCase(this.repo);
  Future<Either<Failures, CartModel>> call() =>
     repo.getCartItem();
}
