import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText, required this.icon,
  });
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: greenDarkText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        prefixIcon: Icon(icon,color: greenDarkText),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: greenDarkText),
        ),
      ),
    );
  }
}