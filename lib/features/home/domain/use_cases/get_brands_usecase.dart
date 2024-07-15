import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/home/data/models/CategoreyModel.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/BrandModel.dart';
import '../repositories/home_repo.dart';
@injectable
class GetBrandsUseCase {
  HomeRepo repo;

  GetBrandsUseCase(this.repo);

  Future<Either<Failures, BrandModel>> call() => repo.getBrands();
}
