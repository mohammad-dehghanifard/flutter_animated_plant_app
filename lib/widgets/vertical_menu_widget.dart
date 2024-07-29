import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/widgets/selector_widget.dart';
import 'package:animated_plant_app/widgets/shopping_cart_widget.dart';
import 'package:animated_plant_app/widgets/tag_widget.dart';
import 'package:flutter/material.dart';

import 'indicator_widget.dart';

class VerticalMenuWidget extends StatefulWidget {
  const VerticalMenuWidget({super.key});

  @override
  State<VerticalMenuWidget> createState() => _VerticalMenuWidgetState();
}

class _VerticalMenuWidgetState extends State<VerticalMenuWidget> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 450));
    animation = Tween<double>(begin: 200,end: 200).animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            buildBodyWidget(size),
            // selector
             Positioned(
                top: animation.value,
                right: 0,
                child: const SelectorWidget())
          ],
        );
      },
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
          TagWidget(text: "جدیدترین",onTap: () => changeCategory(0)),
          TagWidget(text: "محبوبترین",onTap: () => changeCategory(1)),
          TagWidget(text: "پیشنهادی برای شما",onTap: () => changeCategory(2)),
          const SizedBox(height: 50),
          const ShoppingCartWidget(),
          const Spacer(),
          const IndicatorWidget()
          // card item
        ],
      ),
    );
  }

  void changeCategory(int index) {
    setState(() {
      animation = Tween<double>(begin: 200 + (currentIndex * 130),end: 200 + (index * 130) ).animate(animationController);
      currentIndex = index;
      animationController.forward(from: 0);
    });
  }
}
