import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/widgets/custome_button.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: const OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: AppColors.primaryColor.withValues(alpha: 0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomeButton(onPressed: () {}, text: 'Start Now'),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
