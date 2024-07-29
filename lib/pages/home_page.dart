import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/widgets/search_icon_widget.dart';
import 'package:animated_plant_app/widgets/vertical_menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: const SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu widget
            VerticalMenuWidget(),
            // home body
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // title and search bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("محصولات",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),

                        SearchIconWidget()
                      ],
                    ),
                    // product list
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


