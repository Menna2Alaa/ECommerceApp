import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:e_commerce_app2/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

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

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }

  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = math.Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<User> signInWithApple() async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    return (await FirebaseAuth.instance.signInWithCredential(oauthCredential))
        .user!;
  }

  Future deleteUSer() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
