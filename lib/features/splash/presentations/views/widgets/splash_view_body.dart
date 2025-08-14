import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app2/features/splash/presentations/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: isEnglish()
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.assetsImagesPlant)],
        ),
        SvgPicture.asset(Assets.assetsImagesLogo),
        SvgPicture.asset(Assets.assetsImagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}

bool isEnglish() {
  return Intl.getCurrentLocale() == 'en';
}
