import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/donot_have_an_account_widget.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
                hintText: 'Full Name',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomeTextFormField(
                hintText: 'Email',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16),
              const CustomeTextFormField(
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),

              const SizedBox(height: 33),
              CustomeButton(onPressed: () {}, text: 'Sign Up'),
              DonotHaveAnAccountWidget(
                onTap: () {
                  Navigator.pushNamed(context, LoginView.routeName);
                },
                text1: 'Alredy has an account?',
                text2: 'Sign in',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
