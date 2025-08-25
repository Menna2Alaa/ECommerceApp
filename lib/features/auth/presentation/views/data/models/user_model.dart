import 'package:e_commerce_app2/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});
  factory UserModel.fromFirebase(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }
}
