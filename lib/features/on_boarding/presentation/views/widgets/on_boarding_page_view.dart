import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          image: Assets.assetsImagesPageViewItem1Image,
          subTitle:
              'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and high quality',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Welcome to '), Text('Fruit'), Text('HUB')],
          ),
        ),

        PageViewItem(
          backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          image: Assets.assetsImagesPageViewItem2Image,
          subTitle:
              'We bring you the best carefully selected fruits. Check out the details, photos, and reviews to make sure you choose the perfect fruit.',
          title: Text(textAlign: TextAlign.center, 'Search and Shop'),
        ),
      ],
    );
  }
}
