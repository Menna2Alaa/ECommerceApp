import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveNavigationBarItem extends StatelessWidget {
  const ActiveNavigationBarItem(
      {super.key, required this.svgPic, required this.name});
  final String svgPic;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(right: 16),
          decoration: ShapeDecoration(
              color: const Color(0xffEEEEEE),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(30))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: ShapeDecoration(
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(30)),
                ),
                child: Center(child: SvgPicture.asset(svgPic)),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                name,
                style: AppTextStyles.semiBold11
                    .copyWith(color: AppColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
