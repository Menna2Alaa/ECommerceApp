import 'package:e_commerce_app2/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app2/features/splash/presentations/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => OnBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => LoginView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => SignUpView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
