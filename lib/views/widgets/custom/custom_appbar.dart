import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
