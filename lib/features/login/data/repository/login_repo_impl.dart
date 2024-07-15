import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/login/data/datasource/remote/remote_login_ds.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';
import 'package:ecommerce_app/features/login/domain/repository/login_repo.dart';

import '../../../../core/error/failures.dart';

class LoginRepoImpl implements LoginRepo{
  RemoteLoginDs loginDs;


  LoginRepoImpl(this.loginDs);

  @override
  Future<Either<Failures,ResponceEntity>> login(String email, String password)async {
    try{
      var responce=await loginDs.login(email, password);
      return Right(responce);
    }catch(e){
      return Left(RemoteFailures(e.toString()));

    }

  }
  
}