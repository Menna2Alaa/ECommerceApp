import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomeCheckBox extends StatefulWidget {
  const CustomeCheckBox({super.key});

  @override
  State<CustomeCheckBox> createState() => _CustomeCheckBoxState();
}

class _CustomeCheckBoxState extends State<CustomeCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 300),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isChecked ? Colors.transparent : const Color(0xffDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(Assets.assetsImagesCheck)
            : SizedBox(),
      ),
    );
  }
}
