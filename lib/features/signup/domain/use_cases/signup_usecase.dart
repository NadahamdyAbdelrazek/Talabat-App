import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';
import 'package:ecommerce_app/features/signup/domain/repositories/signup_repo.dart';

import '../../../../core/error/failures.dart';
import '../../../login/domain/entity/ResponceEntity.dart';

class SignUpUseCase {
  SignUpRepo repo;

  SignUpUseCase(this.repo);
  Future<Either<Failures, ResponceEntity>> call(SignUpRequest request) =>
      repo.signUp(request);
}
