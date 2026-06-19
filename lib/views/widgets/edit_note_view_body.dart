import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel noteModel;

  const EditNoteViewBody({super.key, required this.noteModel});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          const SizedBox(height: 50),
          CustomTextField(
            hintText: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hintText: widget.noteModel.subTitle,
            maxLines: 6,
            onChanged: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
