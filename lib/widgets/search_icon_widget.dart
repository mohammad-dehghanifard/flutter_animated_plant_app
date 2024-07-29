import 'package:flutter/material.dart';

class SearchIconWidget extends StatelessWidget {
  const SearchIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                offset: const Offset(0,5)
            )
          ]
      ),
      child: const Icon(Icons.search),
    );
  }
}