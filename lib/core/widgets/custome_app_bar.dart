import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_outlined),
    ),
    centerTitle: true,
    title: Text(title, style: AppTextStyles.bold19),
  );
}
