import 'package:e_commerce_app2/core/widgets/custome_app_bar.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'New Account'),
      body: SignUpViewBody(),
    );
  }
}
