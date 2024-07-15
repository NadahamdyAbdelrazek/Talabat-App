import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';

import '../../../../core/error/failures.dart';

abstract class LoginRepo{
 Future<Either<Failures,ResponceEntity>> login(String email,String password);
}