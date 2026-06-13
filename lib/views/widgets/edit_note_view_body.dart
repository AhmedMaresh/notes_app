import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hintText: 'Title'),
          CustomTextField(hintText: 'Content', maxLines: 6),
        ],
      ),
    );
  }
}
