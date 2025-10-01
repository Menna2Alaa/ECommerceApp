import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CutomeHomeAppBar extends StatelessWidget {
  const CutomeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
          padding: EdgeInsets.all(12),
          decoration: const ShapeDecoration(
              color: Color(0xffEEF8ED), shape: OvalBorder()),
          child: SvgPicture.asset(Assets.assetsImagesNotification)),
      leading: Image.asset(Assets.assetsImagesProfileImage),
      title: Text(
        'Good Morning..!',
        textAlign: TextAlign.left,
        style: AppTextStyles.regular16.copyWith(color: Color(0xff949D9E)),
      ),
      subtitle: Text(
        'Ahmed Mostafa',
        textAlign: TextAlign.left,
        style: AppTextStyles.bold16.copyWith(color: Colors.black),
      ),
    );
  }
}
