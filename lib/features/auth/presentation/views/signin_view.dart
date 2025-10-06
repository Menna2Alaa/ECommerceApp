import 'package:e_commerce_app2/core/services/get_it_service.dart';
import 'package:e_commerce_app2/core/widgets/custome_app_bar.dart';
import 'package:e_commerce_app2/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildCustomeAppBar(context, title: 'Sign In'),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
