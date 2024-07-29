import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  RotatedBox(
      quarterTurns: -1,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 130,
          height: 80,
          child: Center(child: Text(text,style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),)),
        ),
      ),
    );
  }
}
