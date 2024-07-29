import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/models/plant_model.dart';
import 'package:animated_plant_app/widgets/icon_button_widget.dart';
import 'package:animated_plant_app/widgets/plant_widget.dart';
import 'package:animated_plant_app/widgets/vertical_menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body:  SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu widget
            const VerticalMenuWidget(),
            // home body
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // title and search bar
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("محصولات",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),

                        IconButtonWidget(icon: Icons.search)
                      ],
                    ),
                    const SizedBox(height: 8),
                    // product list
                    Expanded(child: ListView.builder(
                        itemCount: plants.length,
                        itemBuilder: (context, index) {
                          return PlantWidget(
                            onTap: () {},
                            plant: plants[index],
                            firstIcon: index.isOdd,
                          );
                        },
                    )
                    )
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




