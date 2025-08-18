import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withValues(alpha: 0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomeButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'Start Now',
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
