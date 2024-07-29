import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/widgets/selector_widget.dart';
import 'package:animated_plant_app/widgets/shopping_cart_widget.dart';
import 'package:animated_plant_app/widgets/tag_widget.dart';
import 'package:flutter/material.dart';

import 'indicator_widget.dart';

class VerticalMenuWidget extends StatelessWidget {
  const VerticalMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        buildBodyWidget(size),
        // selector
        const Positioned(
          top: 200,
            right: 0,
            child: SelectorWidget())
      ],
    );
  }

  Widget buildBodyWidget(Size size) {
    return Container(
      width: 80,
      height: size.height,
      color: greenLight,
      child: Column(
        children: [
          //welcome message
          Container(
            width: 80,
            height: 150,
            color: greenDark,
            child: const Center(child: Text(
              textAlign: TextAlign.center,
              "سلام محمد عزیز!",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),)),
          ),
          // tags
          const TagWidget(text: "جدیدترین"),
          const TagWidget(text: "محبوبترین"),
          const TagWidget(text: "پیشنهادی برای شما"),
          const SizedBox(height: 50),
          const ShoppingCartWidget(),
          const Spacer(),
          const IndicatorWidget()
          // card item
        ],
      ),
    );
  }
}
