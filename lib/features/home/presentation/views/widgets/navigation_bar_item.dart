import 'package:e_commerce_app2/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/active_navigation_bar_item.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/in_active_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isActive,
      required this.bottomNavigationBarEntity});
  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveNavigationBarItem()
        : InActiveBottomNavigationBarItem(
            svgPic: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
