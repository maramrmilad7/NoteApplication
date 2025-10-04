import 'package:flutter/material.dart';
import 'package:noteapp/widgets/NotesAppBar.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody());
  }
}

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 55),

          NotesAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 30),

          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),

          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
