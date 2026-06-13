import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(icon, size: 26)),
    );
  }
}
