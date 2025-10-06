import 'package:e_commerce_app2/features/auth/presentation/views/signin_view.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app2/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:e_commerce_app2/features/home/presentation/views/home_view.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app2/features/splash/presentations/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => OnBoardingView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => SigninView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => SignUpView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => HomeView());

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (_) => BestSellingView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
