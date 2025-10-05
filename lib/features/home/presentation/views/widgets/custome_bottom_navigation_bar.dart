import 'package:e_commerce_app2/core/utilies/app_images.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class CustomeBottomNavigationBar extends StatelessWidget {
  const CustomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          shadows: [
            BoxShadow(
                color: Color(0x19000000),
                blurRadius: 25,
                offset: Offset(0, -2),
                spreadRadius: 0)
          ]),
      child: Row(
        children: const [],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const ActiveItem()
        : InActiveItem(svgPic: Assets.assetsImagesOutlinedHome);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
