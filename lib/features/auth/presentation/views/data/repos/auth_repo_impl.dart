import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app2/core/errors/exceptions.dart';
import 'package:e_commerce_app2/core/errors/failures.dart';
import 'package:e_commerce_app2/core/services/database_service.dart';
import 'package:e_commerce_app2/core/services/firebase_auth_service.dart';
import 'package:e_commerce_app2/core/utilies/backend_endpoint.dart';
import 'package:e_commerce_app2/features/auth/domain/entities/user_entity.dart';
import 'package:e_commerce_app2/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;

  AuthRepoImpl(
      {required this.dataBaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomeException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUSer();
      }
      return Left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUSer();
      }
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

  @override
  Future<Either<Failures, UserEntity>> signinWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(UserModel.fromFirebase(user));
    } catch (e) {
      log('Exception in AuthRepoImplementation.signinWithFacebook: ${e.toString()}');
      return Left(ServerFailure('Something went wrong, try again later'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWitApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return Right(UserModel.fromFirebase(user));
    } catch (e) {
      log('Exception in AuthRepoImplementation.signinWithFacebook: ${e.toString()}');
      return Left(ServerFailure('Something went wrong, try again later'));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
        path: BackendEndpoint.addUserData, data: user.toMap());
  }
}
