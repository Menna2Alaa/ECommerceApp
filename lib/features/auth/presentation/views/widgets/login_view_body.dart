import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomeTextFormField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomeTextFormField(
              hintText: 'PassWord',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password?',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomeButton(onPressed: () {}, text: 'Sign In'),
            SizedBox(height: 33),
            Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                style: AppTextStyles.semiBold16.copyWith(
                  color: Color(0xff616A6B),
                ),
                children: [
                  TextSpan(
                    text: 'Create an account',
                    style: AppTextStyles.semiBold16.copyWith(
                      color: Color(0xff949D9E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
