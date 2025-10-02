import 'package:flutter/material.dart';
import 'package:noteapp/widgets/NotesAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 55),

          NotesAppBar(title: 'Notes', Icon: Icons.search),
        ],
      ),
    );
  }
}
