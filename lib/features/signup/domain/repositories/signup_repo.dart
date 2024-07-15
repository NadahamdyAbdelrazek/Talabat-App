import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/error/failures.dart';
import 'package:ecommerce_app/features/login/domain/entity/ResponceEntity.dart';
import 'package:ecommerce_app/features/signup/domain/entities/SignUpRequest.dart';

abstract class SignUpRepo{
 Future<Either<Failures,ResponceEntity>> signUp(SignUpRequest request);
}