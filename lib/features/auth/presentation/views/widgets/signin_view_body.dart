import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:e_commerce_app2/core/widgets/password_field.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/have_or_not_have_an_account_widget.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomeTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomeButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SigninCubit>()
                          .signinWithEmailAndPassword(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Sign In'),
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
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
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
