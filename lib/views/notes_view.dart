import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteButtomSheet();
            },
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(28),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 5,
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
