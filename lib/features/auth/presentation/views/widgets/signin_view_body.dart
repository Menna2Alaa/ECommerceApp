import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/have_or_not_have_an_account_widget.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const CustomeTextFormField(
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomeTextFormField(
                hintText: 'PassWord',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),
              const SizedBox(height: 16),
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
              const SizedBox(height: 33),
              CustomeButton(onPressed: () {}, text: 'Sign In'),
              const SizedBox(height: 33),
              HaveOrNotHaveAnAccountWidget(
                onTap: () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                },
                text1: 'Don\'t have an account? ',
                text2: 'Create an account',
              ),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.assetsImagesGoogleIcon,
                title: 'Sign in with google',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.assetsImagesApplIcon,
                title: 'Sign in with apple',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                image: Assets.assetsImagesFacebookIcon,
                title: 'Sign in with facebook',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
