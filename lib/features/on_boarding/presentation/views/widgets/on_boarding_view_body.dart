import 'package:e_commerce_app2/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: OnBoardingPageView())]);
  }
}
