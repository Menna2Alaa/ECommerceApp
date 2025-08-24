import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/have_or_not_have_an_account_widget.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/terms_conditions_check_box.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomeTextFormField(
              hintText: 'Full Name',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            const CustomeTextFormField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomeTextFormField(
              hintText: 'Password',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),

            const SizedBox(height: 16),
            TermsConditionsCheckBox(),
            const SizedBox(height: 30),
            CustomeButton(onPressed: () {}, text: 'Sign Up'),
            const SizedBox(height: 26),
            HaveOrNotHaveAnAccountWidget(
              onTap: () {
                Navigator.pop(context);
              },
              text1: 'Already have an account? ',
              text2: 'Sign in',
            ),
          ],
        ),
      ),
    );
  }
}
