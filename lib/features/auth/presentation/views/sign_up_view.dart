import 'package:e_commerce_app2/core/services/get_it_service.dart';
import 'package:e_commerce_app2/core/widgets/custome_app_bar.dart';
import 'package:e_commerce_app2/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'New Account'),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
