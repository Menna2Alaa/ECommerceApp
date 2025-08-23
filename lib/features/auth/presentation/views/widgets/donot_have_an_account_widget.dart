import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DonotHaveAnAccountWidget extends StatelessWidget {
  const DonotHaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: AppTextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: text2,
            style: AppTextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),
          ),
        ],
      ),
    );
  }
}//'Don\'t have an account? '
//'Create an account'
