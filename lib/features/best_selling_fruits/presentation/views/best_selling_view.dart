import 'package:e_commerce_app2/core/widgets/custome_app_bar.dart';
import 'package:e_commerce_app2/core/widgets/notification_widget.dart';
import 'package:e_commerce_app2/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best_selling_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomeAppBar(context,
          title: 'More selling', iconWidget: NotificationWidget()),
      body: BestSellingViewBody(),
    );
  }
}
