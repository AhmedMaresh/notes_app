import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;

  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder buildBorder({
      required Color? color,
      required double radius,
      required double width,
    }) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(color: color ?? Colors.white, width: width),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          label: Text(hintText),
          labelStyle: TextStyle(color: kPrimaryColor),
          //////////////////////////Border////////////////////////////
          border: buildBorder(color: Colors.white, radius: 8, width: 0.5),
          //////////////////////////Enabled Border////////////////////////////
          enabledBorder: buildBorder(
            color: Colors.white,
            radius: 8,
            width: 0.5,
          ),
          //////////////////////////Focused Border////////////////////////////
          focusedBorder: buildBorder(
            color: kPrimaryColor,
            radius: 15,
            width: 2,
          ),
          //////////////////////////////////////////////////////
        ),
      ),
    );
  }
}
