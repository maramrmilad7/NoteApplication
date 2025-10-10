import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit.dart/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/widgets/NotesAppBar.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note));
  }
}

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 55),

          NotesAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
             BlocProvider.of<NotesCubit>(context).fetchAllNotes();

              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30),

          CustomTextField(
            onChanged: (value) {
                title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(height: 16),

          CustomTextField(
            onChanged: (value) {
                content = value;
            },
            hintText: widget.note.content,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
