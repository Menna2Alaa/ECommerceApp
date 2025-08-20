import 'package:e_commerce_app2/constants.dart';
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
          ],
        ),
      ),
    );
  }
}
