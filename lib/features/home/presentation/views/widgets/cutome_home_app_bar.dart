import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class CutomeHomeAppBar extends StatelessWidget {
  const CutomeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: NotificationWidget(),
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
