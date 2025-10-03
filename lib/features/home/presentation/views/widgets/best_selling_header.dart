import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Best Seller",
          textAlign: TextAlign.left,
          style: AppTextStyles.bold16,
        ),
        Spacer(),
        Text(
          "more",
          textAlign: TextAlign.center,
          style: AppTextStyles.regular13.copyWith(color: Color(0xff949D9E)),
        )
      ],
    );
  }
}
