import 'package:flutter/material.dart';

class TextInfoWidget extends StatelessWidget {
  const TextInfoWidget({
    super.key,
    required this.title, required this.info,
  });

  final String title,info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 14)),
        const SizedBox(height: 4),
        Text(info,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)
      ],
    );
  }
}