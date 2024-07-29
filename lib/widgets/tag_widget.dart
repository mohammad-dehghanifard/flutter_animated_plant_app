import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  RotatedBox(
      quarterTurns: -1,
      child: SizedBox(
        width: 130,
        height: 80,
        child: Center(child: Text(text,style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}
