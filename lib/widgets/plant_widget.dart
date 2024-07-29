import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/models/plant_model.dart';
import 'package:animated_plant_app/pages/detail_page.dart';
import 'package:animated_plant_app/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class PlantWidget extends StatelessWidget {
  const PlantWidget({
    super.key, required this.plant, required this.onTap,  this.firstIcon = false,
  });
  final PlantModel plant;
  final VoidCallback onTap;
  final bool firstIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(firstIcon)...[
          _buildCardBody(context),
          const SizedBox(width: 12),
          // buttons
          _buildButtons()
        ] else ...[
          // buttons
          _buildButtons(),
          const SizedBox(width: 12),
          _buildCardBody(context),


        ]
      ],
    );
  }

  Column _buildButtons() {
    return Column(
      children: [
        IconButtonWidget(icon: Icons.add,color: greenDark),
        const SizedBox(height: 8),
        const IconButtonWidget(icon: Icons.favorite_border,color: Colors.grey),
      ],
    );
  }

  Widget _buildCardBody(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => DetailPage(plant: plant),)),
      child: Container(
        width: 200,
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 24),
        decoration:  BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: greenLight,
                  blurRadius: 1,
                  offset:  Offset( firstIcon ? -5 : 5, 0)
              )
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: plant.imagePath,
                child: Image.asset(plant.imagePath,height: 200,)),
            Text(plant.title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
            const SizedBox(height: 4,),
            Text("${plant.price} تومان",style: TextStyle(color: greenDark,fontSize: 14),),
          ],
        ),
      ),
    );
  }
}