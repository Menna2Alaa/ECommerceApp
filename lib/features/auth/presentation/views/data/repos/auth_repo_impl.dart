import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app2/core/errors/exceptions.dart';
import 'package:e_commerce_app2/core/errors/failures.dart';
import 'package:e_commerce_app2/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app2/features/auth/domain/entities/user_entity.dart';
import 'package:e_commerce_app2/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/data/models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebase(user));
    } on CustomeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImplementation.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(ServerFailure('Something went wrong, try again later'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebase(user));
    } on CustomeException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImplementation.signinWithEmailAndPassword: ${e.toString()}');
      return Left(ServerFailure('Something went wrong, try again later'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(UserModel.fromFirebase(user));
    } catch (e) {
      log('Exception in AuthRepoImplementation.signinWithGoogle: ${e.toString()}');
      return Left(ServerFailure('Something went wrong, try again later'));
    }
  }
}
