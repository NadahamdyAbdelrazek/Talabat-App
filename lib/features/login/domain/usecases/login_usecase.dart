import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';
import 'package:ecommerce_app/features/login/domain/repository/login_repo.dart';

class LoginUseCase {
  LoginRepo loginRepo;

  LoginUseCase(this.loginRepo);

  Future<Either<Failures,ResponceEntity>> call(String email, String password) =>
      loginRepo.login(email, password);
}
