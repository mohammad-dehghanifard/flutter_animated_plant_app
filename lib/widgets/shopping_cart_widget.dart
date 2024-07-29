import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child:  Stack(
        children: [
          const Center(
            child: Icon(Icons.shopping_cart),
          ),

          Positioned(
            top: 5,
            right: 10,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: greenDark
              ),
              child: const Center(
                child: Text("2",style: TextStyle(color: Colors.white,fontSize: 12),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
