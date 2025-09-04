import 'package:e_commerce_app2/core/helper_functions/builde_error_bar.dart';
import 'package:e_commerce_app2/core/widgets/custome_progress_hud.dart';
import 'package:e_commerce_app2/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {}
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomeProgressHud(
            isLoading: state is SignupLoading ? true : false,
            child: SignUpViewBody());
      },
    );
  }
}
