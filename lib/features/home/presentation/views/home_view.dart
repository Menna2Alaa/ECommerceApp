import 'package:e_commerce_app2/features/home/presentation/views/widgets/custome_bottom_navigation_bar.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomeBottomNavigationBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
