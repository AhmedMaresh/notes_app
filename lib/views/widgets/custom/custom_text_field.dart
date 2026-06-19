import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });

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
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hint: Text(hintText),
          hintStyle: TextStyle(color: kPrimaryColor),
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
