import 'dart:math' as math;
import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;

    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  left: itemWidth * 0.4,
                  child: SvgPicture.asset(Assets.assetsImagesPageViewItem2Image,
                      fit: BoxFit.fill)),
              SizedBox(
                width: itemWidth * 0.5,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: Image(
                          image: svg.Svg(
                              Assets.assetsImagesFeaturedItemBackground),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Eid offers",
                            style: AppTextStyles.regular13
                                .copyWith(color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "25% offer",
                            style: AppTextStyles.bold19
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          FeaturedItemButton(
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 29,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
