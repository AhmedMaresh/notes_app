import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(28),
        ),
        backgroundColor: Colors.teal,
        elevation: 5,
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
