import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xffDCDEDE))),
        SizedBox(width: 18),
        Text('or', style: AppTextStyles.semiBold16),
        SizedBox(width: 18),
        Expanded(child: Divider(color: Color(0xffDCDEDE))),
      ],
    );
  }
}
