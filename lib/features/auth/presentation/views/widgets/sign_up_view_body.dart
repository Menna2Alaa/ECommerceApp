import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/core/widgets/custome_text_form_field.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/have_or_not_have_an_account_widget.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/terms_conditions_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late String email, userName, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomeTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: 'Full Name',
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomeTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomeTextFormField(
                onSaved: (value) {
                  password = value!;
                },
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
                suffixIcon:
                    Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
              ),
              const SizedBox(height: 16),
              TermsConditionsCheckBox(),
              const SizedBox(height: 30),
              CustomeButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, userName);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'Sign Up'),
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
      ),
    );
  }
}
