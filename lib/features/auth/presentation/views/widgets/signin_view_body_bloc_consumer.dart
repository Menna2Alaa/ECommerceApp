import 'package:e_commerce_app2/core/widgets/custome_progress_hud.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return CustomeProgressHud(
            isLoading: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
