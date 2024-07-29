import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SelectorWidget extends StatelessWidget {
  const SelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RecClipper(),
      child: Container(
        width: 10,
        height: 30,
        color: greenDark,
      ),
    );
  }
}

class RecClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.close();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
