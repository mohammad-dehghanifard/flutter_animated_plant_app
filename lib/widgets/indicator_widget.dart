import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 60,
        height: 40,
        decoration: BoxDecoration(
          color: greenDark,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20)
          )
        ),
        child: const Center(child: Text("1/12",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.black87
        ),)),
      ),
    );
  }
}
