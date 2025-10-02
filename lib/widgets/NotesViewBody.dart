import 'package:flutter/material.dart';
import 'package:noteapp/widgets/NotesAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NotesAppBar(title: 'Notes', Icon: Icons.search)],
    );
  }
}
