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
            children: [Text('Welcome to '), Text('Fruit'), Text('HUB')],
          ),
        ),
      ],
    );
  }
}
