import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/widgets/vertical_menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Row(
          children: [
            VerticalMenuWidget()
          ],
        ),
      ),
    );
  }
}
