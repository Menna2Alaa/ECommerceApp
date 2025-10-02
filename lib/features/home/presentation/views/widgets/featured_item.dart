import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Image.asset(Assets.assetsImagesWatermelonTest),
          Container(
            child: Column(
              children: [
                Text("Eid offers",
                    style:
                        AppTextStyles.regular13.copyWith(color: Colors.white)),
                Text("25% offer",
                    style: AppTextStyles.bold19.copyWith(color: Colors.white)),
                FeaturedItemButton(
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
