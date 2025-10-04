import 'package:flutter/material.dart';
import 'package:noteapp/widgets/customIcon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key, required this.title,
   required this.icon});
  final String title ;
  final IconData icon ;


  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        CustomIcon(
          onPressed: (){},
          icon: icon,
        ),
      ],
    );
  }
}