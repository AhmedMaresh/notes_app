import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        CustomTextField(hintText: 'Title'),
        CustomTextField(hintText: 'Content', maxLines: 5),
      ],
    );
  }
}
