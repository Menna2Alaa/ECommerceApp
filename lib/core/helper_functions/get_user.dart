import 'dart:convert';

import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/services/shared_prefrences_singleton.dart';
import 'package:e_commerce_app2/features/auth/domain/entities/user_entity.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/data/models/user_model.dart';

UserEntity getUser() {
  var jsonString = Pref.getString(kUserData);
  var uerEntity = UserModel.fromJson(jsonDecode(jsonString));
  return uerEntity;
}
