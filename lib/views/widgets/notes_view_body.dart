import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom/custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  bool isSearching = false;
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(height: 50),
          isSearching
              ? TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearching = false;
                        });

                        context.read<NotesCubit>().searchNote('');
                      },
                      icon: Icon(Icons.close),
                    ),
                  ),
                  onChanged: (value) {
                    context.read<NotesCubit>().searchNote(value);
                  },
                )
              : CustomAppBar(
                  title: 'Note',
                  icon: Icons.search,
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
