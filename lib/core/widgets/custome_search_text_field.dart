import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/core/utilies/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: const Offset(0, 2),
            spreadRadius: 0)
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
              width: 20,
              child: Center(
                  child: SvgPicture.asset(Assets.assetsImagesSearchIcon))),
          suffixIcon: SizedBox(
              width: 20,
              child:
                  Center(child: SvgPicture.asset(Assets.assetsImagesFilter))),
          hintText: 'Search for.....',
          hintStyle: AppTextStyles.regular13.copyWith(color: Color(0xff949D9E)),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: Colors.white),
    );
  }
}
