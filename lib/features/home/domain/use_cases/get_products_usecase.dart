import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/home/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../repositories/home_repo.dart';
@injectable
class GetProductsUseCase {
  HomeRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<Failures, ProductModel>> call() => repo.getProducts();
}