import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xfff3f5f7),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(4))),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(Assets.assetsImagesWatermelonTest),
              SizedBox(
                height: 24,
              ),
              ListTile(
                title: Text(
                  "watermelon",
                  style: AppTextStyles.semiBold13, //semiBold16
                  textAlign: TextAlign.left,
                ),
                subtitle: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "30 LE",
                      style: AppTextStyles.bold13
                          .copyWith(color: AppColors.secondaryColor, height: 0),
                    ),
                    TextSpan(
                      text: "/",
                      style: AppTextStyles.bold13.copyWith(
                          color: AppColors.lightSecondaryColor, height: 0),
                    ),
                    TextSpan(
                      text: " ",
                      style: AppTextStyles.semiBold13
                          .copyWith(color: AppColors.secondaryColor, height: 0),
                    ),
                    TextSpan(
                      text: "Kilo",
                      style: AppTextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondaryColor, height: 0.13),
                    ),
                  ]),
                  textAlign: TextAlign.left,
                ),
                trailing: const CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
