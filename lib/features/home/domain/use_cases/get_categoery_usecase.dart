import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/home/data/models/CategoreyModel.dart';
import 'package:injectable/injectable.dart';

import '../repositories/home_repo.dart';
@injectable
class GetCategoryUseCase {
  HomeRepo repo;

  GetCategoryUseCase(this.repo);

  Future<Either<Failures, CategoreyModel>> call() => repo.getCategories();
}
