import 'package:e_commerce_app2/core/utilies/app_colors.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:e_commerce_app2/features/auth/presentation/views/widgets/custome_check_box.dart';
import 'package:flutter/material.dart';

class TermsConditionsCheckBox extends StatelessWidget {
  const TermsConditionsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomeCheckBox(),
        SizedBox(width: 16),
        //Checkbox(value: false, onChanged: (value) {}),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By creating an account, you agree to ',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'our',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(text: ' ', style: AppTextStyles.semiBold13),
                TextSpan(
                  text: 'terms and conditions.',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
