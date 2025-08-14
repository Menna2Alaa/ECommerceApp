import 'package:e_commerce_app2/features/splash/presentations/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (_) => SplashView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
