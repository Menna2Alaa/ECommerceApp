import 'dart:developer';

import 'package:e_commerce_app2/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.create user with email and password: ${e.toString()} and code is ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomeException(message: 'Weak password');
      } else if (e.code == 'email-already-in-use') {
        throw CustomeException(message: 'Email already in use');
      } else if (e.code == 'network-request-failed') {
        throw CustomeException(message: 'No internet connection');
      } else {
        throw CustomeException(
          message: 'Something went wrong, try again later',
        );
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.create user with email and password: ${e.toString()}');

      throw CustomeException(message: 'Something went wrong, try again later');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signin with email and password: ${e.toString()} and code is ${e.code}');

      if (e.code == 'user-not-found') {
        throw CustomeException(
            message: 'No user found for that email or wrong password.');
      } else if (e.code == 'wrong-password') {
        throw CustomeException(
            message: 'No user found for that email or wrong password.');
      } else if (e.code == 'network-request-failed') {
        throw CustomeException(message: 'No internet connection');
      } else {
        throw CustomeException(
            message: 'Something went wrong, try again later');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signin with email and password: ${e.toString()}');

      throw CustomeException(message: 'Something went wrong, try again later');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
