import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';
import 'package:ecommerce_app/features/signup/data/data_sources/signup_ds.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';
import 'package:ecommerce_app/features/signup/domain/repositories/signup_repo.dart';

class SignUpRepoImpl implements SignUpRepo {
  SignUpDs ds;

  SignUpRepoImpl(this.ds);

  @override
  Future<Either<Failures, ResponceEntity>> signUp(SignUpRequest request) async {
    try {
      var result = await ds.SignUp(request);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }

  }
}
