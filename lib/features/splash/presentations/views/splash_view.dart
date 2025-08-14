import 'package:e_commerce_app2/features/splash/presentations/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splashView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SplashViewBody());
  }
}
