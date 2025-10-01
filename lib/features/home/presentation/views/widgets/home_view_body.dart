import 'package:e_commerce_app2/features/home/presentation/views/widgets/cutome_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: const CutomeHomeAppBar()),
      ],
    );
  }
}
