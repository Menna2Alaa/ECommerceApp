import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

class DonotHaveAnAccountWidget extends StatelessWidget {
  const DonotHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Don\'t have an account? ',
        style: AppTextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        children: [
          TextSpan(
            text: 'Create an account',
            style: AppTextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),
          ),
        ],
      ),
    );
  }
}
