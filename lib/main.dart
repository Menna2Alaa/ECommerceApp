import 'package:e_commerce_app2/core/helper_functions/on_generate_route.dart';
import 'package:e_commerce_app2/core/services/custome_bloc_observer.dart';
import 'package:e_commerce_app2/core/services/get_it_service.dart';
import 'package:e_commerce_app2/core/services/shared_prefrences_singleton.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/features/splash/presentations/views/splash_view.dart';
import 'package:e_commerce_app2/firebase_options.dart';
import 'package:e_commerce_app2/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomeBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Pref.init();
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
