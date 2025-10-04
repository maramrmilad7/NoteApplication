import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, 
   this.maxLines=1});
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      maxLines: maxLines,
      cursorColor: Color(0xff62FCD7),
      decoration: InputDecoration(
      
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff62FCD7), fontSize: 16),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: Color(0xff62FCD7)),
      ),
    );
  }
}

OutlineInputBorder buildBorder({color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
