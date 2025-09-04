import 'package:dartz/dartz.dart';
import 'package:e_commerce_app2/core/errors/failures.dart';
import 'package:e_commerce_app2/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );

  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<Failures, UserEntity>> signinWithGoogle();
}
