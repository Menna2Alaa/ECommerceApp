import 'package:e_commerce_app2/constants.dart';
import 'package:e_commerce_app2/core/widgets/custome_search_text_field.dart';
import 'package:e_commerce_app2/features/home/presentation/views/widgets/cutome_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              const SizedBox(
                height: kTopPadding,
              ),
              const CutomeHomeAppBar(),
              const SizedBox(
                height: kTopPadding,
              ),
              const CustomeSearchTextField()
            ],
          )),
        ],
      ),
    );
  }
}
