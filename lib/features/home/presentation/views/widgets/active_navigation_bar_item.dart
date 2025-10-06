import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveNavigationBarItem extends StatelessWidget {
  const ActiveNavigationBarItem({
    super.key,
    required this.svgPic,
    required this.name,
  });

  final String svgPic;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.only(right: 16),
        decoration: ShapeDecoration(
          color: const Color(0xffEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(svgPic)),
            ),
            const SizedBox(width: 4),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 100),
              style: AppTextStyles.semiBold11
                  .copyWith(color: AppColors.primaryColor),
              child: Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
